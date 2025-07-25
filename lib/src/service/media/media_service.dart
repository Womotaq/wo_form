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

  final PermissionService permissionService;

  static const circleAspectRatio = -1.0;
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
    required List<Media> medias,
    required double? cropAspectRatioOrCircle,
    bool showGrid = false,
    double? maxHeight,
    double? maxWidth,
  }) async {
    final result = <MediaFile>[];

    for (final media in medias) {
      final bytes = await ImageCropper.cropInDialog(
        context: getAppContext(),
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
      final uid = List.generate(4, (_) => random.nextInt(10).toString())
          .reduce((a, b) => a + b);
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

    return medias.length == result.length ? result : null;
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
    double? maxHeight,
    double? maxWidth,
  }) async {
    final picked = await ImagePicker().pickImage(
      source: source,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
    );
    if (picked == null) return null;

    final croppedMedias = await crop(
      medias: [MediaFile(file: picked)],
      cropAspectRatioOrCircle: aspectRatio,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
    );
    return croppedMedias?.firstOrNull;
  }

  /// It is recommended to crop an image when uploading.
  Future<MediaFile?> importImageAndCrop({
    required BuildContext context,
    double? aspectRatio,
    double? maxHeight,
    double? maxWidth,
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
    double? maxHeight,
    double? maxWidth,
  }) =>
      _pickAndCropLocalImage(
        source: ImageSource.camera,
        context: context,
        aspectRatio: aspectRatio,
        maxHeight: maxHeight,
        maxWidth: maxWidth,
      );
}

typedef CropLocalizations = ({
  String title,
  String cancel,
  String save,
  String? rotateLeftTooltip,
  String? rotateRightTooltip,
});

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
