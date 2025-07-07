import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wo_form/wo_form.dart';

/// If you want to use MediaInput,
/// provide an implementation of this class at the top-level of your application
/// with a BlocProvider.
///
/// SETUP :
///
/// iOS :
///
/// <!-- Image Picker Permissions -->
/// <key>NSCameraUsageDescription</key>
/// <string>Allow access to take photos.</string>
/// <key>NSPhotoLibraryUsageDescription</key>
/// <string>Allow access to select photos.</string>
/// <key>NSMicrophoneUsageDescription</key>
/// <string>Allow access to record videos.</string>
abstract class MediaService {
  const MediaService({required this.permissionService});

  final PermissionService permissionService;

  static const avatarImportSettings = MediaImportSettings(
    imageMaxHeight: 512,
    imageMaxWidth: 512,
    preferFrontCamera: true,
    type: MediaType.image,
    methods: [
      MediaImportMethodPickMedias(
        source: MediaPickSource.gallery,
      ),
      MediaImportMethodPickMedias(
        source: MediaPickSource.camera,
      ),
      MediaImportMethodUrl(),
    ],
  );
  static const imageImportSettings = MediaImportSettings(
    type: MediaType.image,
    methods: [
      MediaImportMethodPickMedias(
        source: MediaPickSource.gallery,
      ),
      MediaImportMethodPickMedias(
        source: MediaPickSource.camera,
      ),
      MediaImportMethodUrl(),
    ],
  );

  Future<MediaType> typeOfMediaUrl(MediaUrl media);

  Future<MediaUrl> upload({
    required Media media,
    required String path,
    int? maxSize,
    bool addFileNameToPath = false,
  });

  /// Called when using MediaImportMethodUrl
  Future<MediaUrl?> enterMediaUrl();
  Future<List<Media>> customImport({
    required String methodId,
    required int? limit,
    required MediaImportSettings importSettings,
  });
  BuildContext getAppContext();
  (String title, String cancel, String save) getCropLocalizations(
    BuildContext context,
  );
  Future<MediaImportMethod?> selectImportMethod(
    MediaImportSettings importSettings,
  );

  Future<MediaFile?> _cropImage({
    required String sourcePath,
    double? aspectRatio,
    int? maxHeight,
    int? maxWidth,
  }) async {
    final context = getAppContext();

    final screenSize = MediaQuery.sizeOf(context);
    final cropBoundarySize = min(
      screenSize.width - 128,
      screenSize.height - 256,
    ).toInt();

    // final woL10n = context.woL10n;
    final localizations = getCropLocalizations(context);

    final croppedFile = await ImageCropper().cropImage(
      sourcePath: sourcePath,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
      // Designed for profile photos
      aspectRatio: aspectRatio == null
          ? null
          : CropAspectRatio(
              ratioX: 1 * aspectRatio,
              ratioY: 1,
            ),
      uiSettings: [
        AndroidUiSettings(
          // TODO : aspectRatio
          toolbarTitle: localizations.$1,
          toolbarColor: Theme.of(context).colorScheme.primary,
          toolbarWidgetColor: Theme.of(context).colorScheme.surface,
        ),
        IOSUiSettings(
          minimumAspectRatio: aspectRatio,
        ),
        WebUiSettings(
          context: context,
          presentStyle: WebPresentStyle.page,
          size: CropperSize(
            width: cropBoundarySize,
            height: cropBoundarySize,
          ),
          minContainerHeight: 100,
          zoomOnWheel: false,
          dragMode: WebDragMode.move,
          translations: WebTranslations(
            title: localizations.$1,
            rotateLeftTooltip: '',
            rotateRightTooltip: '',
            cancelButton: localizations.$2,
            cropButton: localizations.$3,
          ),
          themeData: const WebThemeData(
            rotateLeftIcon: Icons.rotate_left,
            rotateRightIcon: Icons.rotate_right,
          ),
        ),
      ],
    );
    return croppedFile == null
        ? null
        : MediaFile(
            file: XFile(
              croppedFile.path,
              mimeType: 'image/${sourcePath.split('.').last}',
            ),
          );
  }

  Future<List<MediaFile>?> edit({
    required List<Media> medias,
    required double? aspectRatio,
    double? maxHeight,
    double? maxWidth,
  }) async {
    final result = <MediaFile>[];

    for (final media in medias) {
      final String sourcePath;
      switch (media) {
        case MediaFile(file: final file):
          sourcePath = file.path;
        case MediaUrl(url: final url):
          if (kIsWeb) {
            sourcePath = url;
          } else {
            final responseData = await http.get(Uri.parse(url));
            final buffer = responseData.bodyBytes.buffer;
            final byteData = ByteData.view(buffer);
            final tempDir = await getTemporaryDirectory();
            final file = await File('${tempDir.path}/img').writeAsBytes(
              buffer.asUint8List(
                  byteData.offsetInBytes, byteData.lengthInBytes),
            );
            sourcePath = file.path;
          }
      }

      final cropped = await _cropImage(
        sourcePath: sourcePath,
        aspectRatio: aspectRatio,
        maxHeight: maxHeight?.toInt(),
        maxWidth: maxWidth?.toInt(),
      );
      if (cropped == null) return null;
      result.add(cropped);
    }

    assert(medias.length == result.length);
    return result;
  }

  Future<List<Media>> _importMedias({
    required int? limit,
    required MediaImportSettings importSettings,
    required MediaImportMethod importMethod,
  }) async {
    switch (importMethod) {
      case MediaImportMethodCustom(:final id):
        return customImport(
          methodId: id,
          limit: limit,
          importSettings: importSettings,
        );
      case MediaImportMethodUrl():
        final media = await enterMediaUrl();
        return media == null ? [] : [media];
      case MediaImportMethodPickMedias(
          source: final source,
          type: final type,
        ):
        final includeImages = (type ?? importSettings.type).includeImages;
        final includeVideos = (type ?? importSettings.type).includeVideos;

        if (!includeImages && !includeVideos) {
          throw AssertionError('No type is specified');
        }
        final imageSource = source.toImageSource();

        if (!includeImages) {
          assert(includeVideos);
          // NOTE : cannot import multiple videos using this method
          final video = await ImagePicker().pickVideo(
            source: imageSource,
            preferredCameraDevice: importSettings.preferredCameraDevice,
            maxDuration: importSettings.videoMaxDuration,
          );
          return video == null ? [] : [MediaFile(file: video)];
        } else if (!includeVideos) {
          // NOTE : can't take multiple photos with camera
          if (limit == 1 || imageSource == ImageSource.camera) {
            final image = await ImagePicker().pickImage(
              source: imageSource,
              preferredCameraDevice: importSettings.preferredCameraDevice,
              maxHeight: importSettings.imageMaxHeight,
              maxWidth: importSettings.imageMaxWidth,
              imageQuality: importSettings.imageQuality,
              requestFullMetadata: importSettings.imageRequestFullMetadata,
            );
            return image == null ? [] : [MediaFile(file: image)];
          } else {
            final images = await ImagePicker().pickMultiImage(
              limit: limit,
              maxHeight: importSettings.imageMaxHeight,
              maxWidth: importSettings.imageMaxWidth,
              imageQuality: importSettings.imageQuality,
              requestFullMetadata: importSettings.imageRequestFullMetadata,
            );
            return images.map((image) => MediaFile(file: image)).toList();
          }
        } else {
          if (imageSource == ImageSource.camera) {
            throw UnimplementedError(
              "ImagePicker's camera can't take a photo and a video "
              'at the same time.',
            );
          } else if (limit == 1) {
            final image = await ImagePicker().pickMedia(
              maxHeight: importSettings.imageMaxHeight,
              maxWidth: importSettings.imageMaxWidth,
              imageQuality: importSettings.imageQuality,
              requestFullMetadata: importSettings.imageRequestFullMetadata,
            );
            return image == null ? [] : [MediaFile(file: image)];
          } else {
            final medias = await ImagePicker().pickMultipleMedia(
              limit: limit,
              maxHeight: importSettings.imageMaxHeight,
              maxWidth: importSettings.imageMaxWidth,
              imageQuality: importSettings.imageQuality,
              requestFullMetadata: importSettings.imageRequestFullMetadata,
            );
            return medias.map((media) => MediaFile(file: media)).toList();
          }
        }
    }
  }

  Future<List<Media>> importMedias({
    required int? limit,
    required MediaImportSettings importSettings,
  }) async {
    final selectedImportMethod = await selectImportMethod(importSettings);
    if (selectedImportMethod == null) return [];
    return _importMedias(
      limit: limit,
      importSettings: importSettings,
      importMethod: selectedImportMethod,
    );
  }

  /// It is recommended to crop an image when uploading.
  Future<MediaFile?> _pickAndCropLocalImage({
    required ImageSource source,
    required BuildContext context,
    double? aspectRatio,
    int? maxHeight,
    int? maxWidth,
  }) async {
    final picked = await ImagePicker().pickImage(
      source: source,
      maxHeight: maxHeight?.toDouble(),
      maxWidth: maxWidth?.toDouble(),
    );

    return picked == null
        ? null
        : _cropImage(
            sourcePath: picked.path,
            aspectRatio: aspectRatio,
            maxHeight: maxHeight,
            maxWidth: maxWidth,
          );
  }

  /// It is recommended to crop an image when uploading.
  Future<MediaFile?> importImageAndCrop({
    required BuildContext context,
    double? aspectRatio,
    int? maxHeight,
    int? maxWidth,
  }) =>
      _pickAndCropLocalImage(
        source: ImageSource.gallery,
        context: context,
        aspectRatio: aspectRatio,
        maxHeight: maxHeight,
        maxWidth: maxWidth,
      );

  /// It is recommended to crop an image when uploading.
  Future<MediaFile?> takePhotoAndCrop({
    required BuildContext context,
    double? aspectRatio,
    int? maxHeight,
    int? maxWidth,
  }) =>
      _pickAndCropLocalImage(
        source: ImageSource.camera,
        context: context,
        aspectRatio: aspectRatio,
        maxHeight: maxHeight,
        maxWidth: maxWidth,
      );
}

extension on MediaPickSource {
  ImageSource toImageSource() => switch (this) {
        MediaPickSource.camera => ImageSource.camera,
        MediaPickSource.gallery => ImageSource.gallery,
      };
}

extension on MediaImportSettings {
  CameraDevice get preferredCameraDevice =>
      preferFrontCamera ? CameraDevice.front : CameraDevice.rear;
}
