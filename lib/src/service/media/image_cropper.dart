import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image/image.dart' as img;
import 'package:wo_form/wo_form.dart';

class Cropper extends StatefulWidget {
  const Cropper({
    required this.image,
    this.aspectRatioOrCircle,
    super.key,
  });

  final Media image;
  final double? aspectRatioOrCircle;

  static Future<Uint8List?> cropInDialog({
    required BuildContext context,
    required Media image,
    double? aspectRatioOrCircle,
  }) =>
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Cropper(
            image: image,
            aspectRatioOrCircle: aspectRatioOrCircle,
          ),
        ),
      );

  @override
  State<Cropper> createState() => _CropperState();
}

class _CropperState extends State<Cropper> {
  final controller = CropController();
  Uint8List? bytes;
  double? originalAspectRatio;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final bytes_ = await widget.image.bytes;
    final image = img.decodeImage(bytes_);
    if (image == null) return;
    final originalAspectRatio_ = image.width / image.height;

    setState(() {
      bytes = bytes_;
      originalAspectRatio = originalAspectRatio_;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cropCircle =
        widget.aspectRatioOrCircle == MediaService.circleAspectRatio;
    final localizations =
        context.read<MediaService>().getCropLocalizations(context);

    final crop = Center(
      child: bytes == null
          ? const CircularProgressIndicator()
          : Builder(
              builder: (context) {
                final crop = Crop(
                  image: bytes!,
                  interactive: true,
                  fixCropRect: true,
                  controller: controller,
                  aspectRatio: cropCircle ? 1 : widget.aspectRatioOrCircle,
                  onCropped: (result) async {
                    switch (result) {
                      case CropSuccess(:final croppedImage):
                        Navigator.of(context).pop(croppedImage);
                      case CropFailure(:final cause):
                        (WoFormTheme.of(context)?.onSubmitError ??
                                WoForm.defaultOnSubmitError)
                            .call(context, SubmitErrorStatus(error: cause));
                    }
                  },
                  willUpdateScale: (newScale) => newScale < 5,
                  progressIndicator: const CircularProgressIndicator(),
                  withCircleUi: cropCircle,
                  // overlayBuilder: true
                  //     ? (context, rect) {
                  //         final overlay = CustomPaint(
                  //           painter: GridPainter(),
                  //         );
                  //         return true
                  //             ? ClipOval(
                  //                 child: overlay,
                  //               )
                  //             : overlay;
                  //       }
                  //     : null,
                  baseColor: Colors.transparent,
                  maskColor: Colors.black.withAlpha(128),
                  initialRectBuilder: cropCircle
                      ? null
                      : InitialRectBuilder.withBuilder(
                          (viewportRect, imageRect) {
                          return Rect.fromLTRB(
                            viewportRect.left + 24,
                            viewportRect.top + 24,
                            viewportRect.right - 24,
                            viewportRect.bottom - 24,
                          );
                        }),
                );

                return originalAspectRatio == null
                    ? crop
                    : AspectRatio(
                        aspectRatio: originalAspectRatio!,
                        child: crop,
                      );
              },
            ),
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              localizations.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 24),
          if (originalAspectRatio != null && originalAspectRatio! < .75)
            Flexible(child: crop)
          else
            crop,
          const SizedBox(height: 16),
          Row(
            children: [
              // IconButton(
              //   onPressed: controller.undo,
              //   icon: const Icon(Icons.undo),
              // ),
              // IconButton(
              //   onPressed: controller.redo,
              //   icon: const Icon(Icons.redo),
              // ),
              const Spacer(),
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: Text(localizations.cancel),
              ),
              const SizedBox(width: 8),
              FilledButton(
                onPressed: cropCircle ? controller.cropCircle : controller.crop,
                child: Text(localizations.save),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
