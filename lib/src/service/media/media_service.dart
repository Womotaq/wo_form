import 'dart:io';
import 'dart:math' hide log;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wo_form/wo_form.dart';

/// If you want to use MediaInput,
/// provide an implementation of this class at the top-level of your application
/// with a BlocProvider.
abstract class MediaService {
  const MediaService({required this.permissionService});

  final PermissionServiceMixin permissionService;

  static const circleAspectRatio = -1.0;
  static const avatarImportSettings = MediaImportSettings(
    imageMaxHeight: 512,
    imageMaxWidth: 512,
    preferFrontCamera: true,
    type: MediaType.image,
    methods: [
      MediaImportMethodPickMedias(source: ImageSource.gallery),
      MediaImportMethodPickMedias(source: ImageSource.camera),
    ],
  );
  static const imageImportSettings = MediaImportSettings(
    type: MediaType.image,
    methods: [
      MediaImportMethodPickMedias(source: ImageSource.gallery),
      MediaImportMethodPickMedias(source: ImageSource.camera),
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
  CropLocalizations getCropLocalizations(BuildContext context);
  Future<MediaImportMethod?> selectImportMethod(
    MediaImportSettings importSettings,
  );

  /// Used by MediaField to display a media
  Widget mediaWidgetBuilder({
    required Media media,
    BoxFit? fit,
    Alignment alignment,
    String? package,
    Key? key,
  });

  Future<List<MediaFile>?> crop({
    required BuildContext context,
    required List<Media> medias,
    required double? cropAspectRatioOrCircle,
    bool showGrid = false,
    double? maxHeight,
    double? maxWidth,
  }) async {
    final result = <MediaFile>[];

    for (final media in medias) {
      if (!context.mounted) return result;
      final bytes = await showImageCropperDialog(
        context: context,
        image: media,
        cropAspectRatioOrCircle: cropAspectRatioOrCircle,
        showGrid: showGrid,
      );

      if (bytes == null) continue;

      // Replace the extension of the original image by png,
      // since Cropper produces bytes in PNG format.
      var filename = '${withoutExtension(media.name ?? 'image')}.png';
      // Remove potential old prefix 'croppedXXXX-'
      filename = filename.replaceFirst(RegExp(r'^cropped\d{4}-'), '');
      // Add a new prefix. This prefix ensures the image is considered
      // a new one, so the old cached image is not reused.
      final random = Random();
      final uid = List.generate(
        4,
        (_) => random.nextInt(10).toString(),
      ).reduce((a, b) => a + b);
      filename = 'cropped$uid-$filename';

      if (kIsWeb) {
        result.add(
          MediaFile(
            file: XFile.fromData(
              bytes,
              name: filename,
              mimeType: 'image/png',
            ),
          ),
        );
      } else {
        final tempDir = await getTemporaryDirectory();
        final filePath = '${tempDir.path}/$filename';
        await File(filePath).writeAsBytes(bytes);
        result.add(
          MediaFile(
            file: XFile(
              filePath,
              name: filename,
              mimeType: 'image/png',
            ),
          ),
        );
      }
    }

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
        final granted = await switch (source) {
          ImageSource.camera => permissionService.requireCamera(),
          ImageSource.gallery => permissionService.requirePhotos(),
        };
        if (!granted) return [];

        // It is impossible that includeImages and includeVideos are false.
        final includeImages = (type ?? importSettings.type).includeImages;
        final includeVideos = (type ?? importSettings.type).includeVideos;

        if (!includeImages) {
          // NOTE : cannot import multiple videos using this method
          final video = await ImagePicker().pickVideo(
            source: source,
            preferredCameraDevice: importSettings.preferredCameraDevice,
            maxDuration: importSettings.videoMaxDuration,
          );
          return video == null ? [] : [MediaFile(file: video)];
        } else if (!includeVideos) {
          // TODO : take multiple photos with camera
          // TODO : take photo with webcam on web -> https://github.com/flutter/flutter/issues/85195

          if (limit == 1 || source == ImageSource.camera) {
            final image = await ImagePicker().pickImage(
              source: source,
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
          if (source == ImageSource.camera) {
            throw ArgumentError(
              "ImagePicker's camera can't take a photo and a video "
              'at the same time.',
            );
          }

          if (limit == 1) {
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
}

typedef CropLocalizations = ({String title, String cancel, String save});

extension on MediaImportSettings {
  CameraDevice get preferredCameraDevice =>
      preferFrontCamera ? CameraDevice.front : CameraDevice.rear;
}
