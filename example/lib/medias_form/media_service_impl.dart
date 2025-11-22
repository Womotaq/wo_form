import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/medias_form/media_viewer.dart';
import 'package:wo_form_example/utils/app.dart';

class MediaServiceImpl extends MediaService {
  const MediaServiceImpl({required super.permissionService});

  @override
  Widget mediaWidgetBuilder({
    required Media media,
    BoxFit? fit,
    Alignment alignment = Alignment.center,
    String? package,
    bool circle = false,
    Key? key,
  }) =>
      MediaViewer(
        media: media,
        fit: fit,
        alignment: alignment,
        package: package,
        key: key,
      );

  @override
  Future<List<Media>> customImport({
    required String methodId,
    required int? limit,
    required MediaImportSettings importSettings,
  }) async =>
      [];

  /// Show a dialog asking for the image url
  @override
  Future<MediaUrl?> enterMediaUrl() async {
    return MediaUrl(url: 'url-typed-by-user');
  }

  @override
  CropLocalizations getCropLocalizations(BuildContext context) =>
      (title: 'Cropping', cancel: 'Cancel', save: 'Save');

  @override
  Future<MediaImportMethod?> selectImportMethod(
    MediaImportSettings importSettings,
  ) async {
    final methods = importSettings.methods;
    if (methods.isEmpty) return null;
    if (methods.length == 1) return methods.first;

    return _tilesDialog<MediaImportMethod>(
      context: App.context,
      tiles: (context) => methods
          .map(
            (importMethod) => ListTile(
              onTap: () => Navigator.of(context).pop(importMethod),
              title: Text(
                switch (importMethod) {
                  MediaImportMethodCustom() => 'Custom',
                  MediaImportMethodUrl() => 'Type an url',
                  MediaImportMethodPickMedias(source: final source) => switch (
                        source) {
                      ImageSource.gallery => 'Library',
                      ImageSource.camera
                          when importSettings.preferFrontCamera =>
                        'Take a selfie',
                      ImageSource.camera
                          when importSettings.type != MediaType.imageOrVideo =>
                        'Camera',
                      ImageSource.camera
                          when importMethod.type == MediaType.image =>
                        'Take a photo',
                      ImageSource.camera
                          when importMethod.type == MediaType.video =>
                        'Take a video',
                      ImageSource.camera => 'Camera',
                    },
                },
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Future<MediaUrl> upload({
    required Media media,
    required String path,
    int? maxSize,
    bool addFileNameToPath = false,
  }) async {
    switch (media) {
      case MediaUrl():
        // LATER : download media and upload it to firebase storage
        return media;
      case MediaFile():
        return MediaUrl(url: 'url-of-uploaded-file');
    }
  }
}

Future<T?> _tilesDialog<T>({
  required BuildContext context,
  required List<Widget> Function(BuildContext context) tiles,
}) =>
    showDialog<T>(
      context: context,
      builder: (BuildContext dialogContext) {
        return Dialog(
          clipBehavior: Clip.hardEdge,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 384),
            child: Builder(
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: tiles(context),
                );
              },
            ),
          ),
        );
      },
    );
