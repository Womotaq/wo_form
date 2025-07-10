import 'dart:math' hide log;

// import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

/// IMPORT MEDIA
///
/// Options :
///
/// - take photo (camera)
/// - take video (camera)
/// - import 1 photo (gallery)
/// - import X photos (gallery)
/// - import 1 video (gallery)
/// - import 1 photo or video (gallery)
/// - import X photos or videos (gallery)
/// - write image url
/// Add setup documentation
///
///
///
/// Social Network UX examples :
///
/// Facebook add medias
/// - Click on Add media
/// - Import 1 media (can switch to X medias)
/// - Click on Add other medias
/// - Import X medias (can switch to 1 medias)
/// - Click on imported media to resize it
///
/// Linkedin add medias
/// - Click on Add media
/// - Import X medias
/// - Show edit imported medias page
///
/// WoForm's choice :
///
/// Post add medias
/// - Click on Add media
/// - Import X medias
/// - Click on imported media to resize it
///
/// Dev options :
/// - Max medias count
/// - Max medias weight
/// - Allow videos
/// - Aspect ratio
///
///
/// Avatar UX :
/// - Click on Add photo
/// - Impport 1 media
/// - Show edit imported media page
///
/// Dev options :
/// - Max image weight
/// - Aspect ratio
///
///
/// Crop media :
/// - Media => MediaFile
/// Add setup documentation
///
///
///
///
/// Use cases of media field in forms remotely edited :
/// - I want to allow the user to add a screenshot of the issue he's facing
/// - I want the user to send me identity proofs (driving licence, ...)
/// - I want the user to add images in the poll he's creating
///
/// Technical needs :
/// - Let the app provide an implementation of MediaService
/// - Deserialize a MediaNode
///   - Attributes :
///     - id
///     - isRequired
///     - maxCount
///     - minCount
///     - uploadPath
///     - supportedTypes (image video)
///     - aspectRatio
///   - When exporting a WoForm containing a MediaNode :
///     -
///     - context.read<MediaService>().upload(medias, node.uploadFolderPath)

class MediaField extends StatelessWidget {
  const MediaField(this.data, {super.key});

  final WoFieldData<MediaInput, List<Media>?, MediaInputUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final medias = data.value ?? [];
    final media = medias.firstOrNull;
    final onChanged = data.onValueChanged;
    final fieldHeight = data.uiSettings.fieldHeight ?? 160;
    final aspectRatio = data.input.aspectRatio;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: data.input.maxCount == 1
          ? media != null
              ? Stack(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: onChanged == null
                            ? null
                            : () => edit(context, media),
                        child: SizedBox(
                          height: fieldHeight.toDouble(),
                          width: aspectRatio == null || aspectRatio == 0
                              ? null
                              : fieldHeight * aspectRatio,
                          child: context
                              .read<MediaService>()
                              .mediaWidgetBuilder(media: media),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: fieldHeight.toDouble(),
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerLowest
                            .withAlpha(160),
                        child: Column(
                          children: [
                            IconButton(
                              // style: IconButton.styleFrom(
                              //   backgroundColor: Theme.of(context)
                              //       .colorScheme
                              //       .surfaceContainerLowest
                              //       .withAlpha(160),
                              // ),
                              onPressed: onChanged == null
                                  ? null
                                  : () => onChanged.call([]),
                              icon: const Icon(Icons.close),
                            ),
                            IconButton(
                              // style: IconButton.styleFrom(
                              //   backgroundColor: Theme.of(context)
                              //       .colorScheme
                              //       .surfaceContainerLowest
                              //       .withAlpha(160),
                              // ),
                              icon: const Icon(Icons.edit),
                              onPressed: onChanged == null
                                  ? null
                                  : () => edit(context, media),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: fieldHeight.toDouble(),
                        width: aspectRatio == null || aspectRatio == 0
                            ? null
                            : fieldHeight * aspectRatio,
                        child: AddMediaButon(
                          addMediaText: data.uiSettings.addMediaText,
                          onChanged: onChanged,
                          aspectRatioOrCircle: data.input.aspectRatioOrCircle,
                          limit: 1,
                          importSettings: data.input.importSettings,
                        ),
                      ),
                    ),
                  ],
                )
          : SizedBox(
              height: fieldHeight.toDouble(),
              child: ListView.separated(
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox.square(dimension: 16),
                scrollDirection: Axis.horizontal,
                // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                //   maxCrossAxisExtent: 200,
                //   mainAxisSpacing: 8,
                //   crossAxisSpacing: 8,
                // ),
                itemCount: data.input.maxCount == null
                    ? medias.length + 1
                    : min(medias.length + 1, data.input.maxCount!),
                itemBuilder: _itemBuilder,
              ),
            ),
    );
  }

  Widget? _itemBuilder(BuildContext context, int index) {
    final medias = data.value ?? [];
    final onChanged = data.onValueChanged;
    final fieldHeight = data.uiSettings.fieldHeight ?? 160;

    if (index == medias.length) {
      final limit = data.input.maxCount == null
          ? null
          : data.input.maxCount! - medias.length;

      if (limit == null || limit > 0) {
        return SizedBox(
          width: fieldHeight.toDouble(),
          child: AddMediaButon(
            addMediaText: data.uiSettings.addMediaText,
            onChanged: onChanged == null
                ? null
                : (newMedias) => onChanged([...medias, ...newMedias]),
            aspectRatioOrCircle: data.input.aspectRatioOrCircle,
            limit: limit,
            importSettings: data.input.importSettings,
          ),
        );
      }
      return null;
    }

    final media = medias[index];

    return SizedBox(
      width: fieldHeight.toDouble(),
      child: Stack(
        children: [
          GestureDetector(
            onTap: onChanged == null ? null : () => edit(context, media),
            child: Center(
              child:
                  context.read<MediaService>().mediaWidgetBuilder(media: media),
            ),
          ),
          _MediaActions(media: media, data: data),
        ],
      ),
    );
  }

  Future<void> edit(
    BuildContext context,
    Media media,
  ) async {
    final cropped = (await context.read<MediaService>().edit(
      medias: [media],
      aspectRatioOrCircle: data.input.aspectRatioOrCircle,
      maxHeight: data.input.importSettings.imageMaxHeight,
      maxWidth: data.input.importSettings.imageMaxWidth,
    ))
        ?.firstOrNull;
    if (cropped == null) return;

    final medias = data.value ?? [];
    final newMedias = List<Media>.from(medias);
    newMedias[medias.indexOf(media)] = cropped;
    data.onValueChanged?.call(newMedias);
  }
}

class _MediaActions extends StatelessWidget {
  const _MediaActions({
    required this.media,
    required this.data,
  });

  final Media media;
  final WoFieldData<MediaInput, List<Media>?, MediaInputUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final medias = data.value ?? [];
    final onChanged = data.onValueChanged;

    final index = medias.indexOf(media);

    return Container(
      height: 32,
      color:
          Theme.of(context).colorScheme.surfaceContainerLowest.withAlpha(160),
      child: IconButtonTheme(
        data: IconButtonThemeData(
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed:
                  data.onValueChanged == null || index == -1 || index == 0
                      ? null
                      : () => data.onValueChanged!(
                            List<Media>.from(medias)
                              ..removeAt(index)
                              ..insert(index - 1, media),
                          ),
              icon: const Icon(Icons.keyboard_arrow_left),
            ),
            IconButton(
              onPressed: data.onValueChanged == null ||
                      index == -1 ||
                      index == medias.length - 1
                  ? null
                  : () => data.onValueChanged!(
                        List<Media>.from(medias)
                          ..removeAt(index)
                          ..insert(index + 1, media),
                      ),
              icon: const Icon(Icons.keyboard_arrow_right),
            ),
            const Expanded(child: SizedBox.shrink()),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: onChanged == null
                  ? null
                  : () async {
                      final cropped = (await context.read<MediaService>().edit(
                        medias: [media],
                        aspectRatioOrCircle: data.input.aspectRatioOrCircle,
                        maxHeight: data.input.importSettings.imageMaxHeight,
                        maxWidth: data.input.importSettings.imageMaxWidth,
                      ))
                          ?.firstOrNull;
                      if (cropped == null) return;

                      final newMedias = List<Media>.from(medias);
                      newMedias[medias.indexOf(media)] = cropped;
                      onChanged(newMedias);
                    },
            ),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: onChanged == null
                  ? null
                  : () => onChanged(medias..remove(media)),
            ),
          ],
        ),
      ),
    );
  }
}

class AddMediaButon extends StatelessWidget {
  const AddMediaButon({
    required this.addMediaText,
    required this.onChanged,
    required this.aspectRatioOrCircle,
    required this.limit,
    required this.importSettings,
    super.key,
  });

  final String? addMediaText;
  final void Function(List<Media>)? onChanged;
  final double? aspectRatioOrCircle;
  final int? limit;
  final MediaImportSettings importSettings;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onChanged == null
            ? null
            : () async {
                FocusScope.of(context).unfocus();

                final mediaService = context.read<MediaService>();
                var newMedias = await mediaService.importMedias(
                  limit: limit,
                  importSettings: importSettings,
                );
                if (newMedias.isEmpty) return;

                if (aspectRatioOrCircle != null) {
                  final croppedMedias = await mediaService.edit(
                    medias: newMedias,
                    aspectRatioOrCircle: aspectRatioOrCircle,
                    maxHeight: importSettings.imageMaxHeight,
                    maxWidth: importSettings.imageMaxWidth,
                  );
                  if (croppedMedias == null) return;
                  newMedias = croppedMedias;
                }

                onChanged!(newMedias);
              },
        child: DottedBorder(
          options: RectDottedBorderOptions(
            strokeWidth: 2,
            color: Theme.of(context).colorScheme.outlineVariant,
            dashPattern: const [8, 4],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.outlineVariant,
                    size: 48,
                  ),
                  if (addMediaText != '') ...[
                    const SizedBox(height: 8),
                    Text(
                      addMediaText ?? 'Ajouter une image',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
