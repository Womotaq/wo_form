import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/service/media/download_button.dart';
import 'package:wo_form/wo_form.dart';

class Cropper extends StatefulWidget {
  const Cropper({
    required this.image,
    this.cropAspectRatioOrCircle,
    this.showGrid = false,
    super.key,
  });

  final Media image;
  final double? cropAspectRatioOrCircle;
  final bool showGrid;

  static Future<Uint8List?> cropInDialog({
    required BuildContext context,
    required Media image,
    double? cropAspectRatioOrCircle,
    bool showGrid = false,
  }) =>
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Cropper(
            image: image,
            cropAspectRatioOrCircle: cropAspectRatioOrCircle,
            showGrid: showGrid,
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
  bool cropping = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final bytes_ = await widget.image.bytes;
    final image = await decodeImageFromList(await widget.image.bytes);
    final originalAspectRatio_ = image.width / image.height;

    setState(() {
      bytes = bytes_;
      originalAspectRatio = originalAspectRatio_;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cropCircle =
        widget.cropAspectRatioOrCircle == MediaService.circleAspectRatio;
    final localizations =
        context.read<MediaService>().getCropLocalizations(context);

    final crop = Center(
      child: bytes == null
          ? const CircularProgressIndicator()
          : Builder(
              builder: (context) {
                final crop = Crop(
                  image: bytes!,
                  controller: controller,
                  aspectRatio: cropCircle ? 1 : widget.cropAspectRatioOrCircle,
                  onCropped: (result) async {
                    switch (result) {
                      case CropSuccess(:final croppedImage):
                        Navigator.of(context).pop(croppedImage);
                      case CropFailure(:final cause):
                        setState(() => cropping = false);
                        (WoFormTheme.of(context)?.onSubmitError ??
                                WoForm.defaultOnSubmitError)
                            .call(context, SubmitErrorStatus(error: cause));
                    }
                  },
                  willUpdateScale: (newScale) => newScale < 5,
                  progressIndicator: const CircularProgressIndicator(),
                  withCircleUi: cropCircle,
                  overlayBuilder: widget.showGrid
                      ? (context, rect) => ClipOval(
                            child: CustomPaint(
                              painter: _GridPainter(),
                            ),
                          )
                      : null,
                  baseColor: Colors.transparent,
                  maskColor: Colors.black.withAlpha(128),
                  initialRectBuilder: widget.cropAspectRatioOrCircle == null
                      ? InitialRectBuilder.withBuilder(
                          (viewportRect, imageRect) {
                          return Rect.fromLTRB(
                            viewportRect.left + 24,
                            viewportRect.top + 24,
                            viewportRect.right - 24,
                            viewportRect.bottom - 24,
                          );
                        })
                      : null,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          DownloadButton(image: widget.image),
          const SizedBox(height: 8),
          Text(
            localizations.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 24),
          if (originalAspectRatio != null && originalAspectRatio! < .75)
            Flexible(child: crop)
          else
            crop,
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: Wrap(
              spacing: 8,
              alignment: WrapAlignment.end,
              children: [
                TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: Text(localizations.cancel),
                ),
                FilledButton(
                  onPressed: () {
                    if (cropping) return;
                    setState(() => cropping = true);
                    if (cropCircle) {
                      controller.cropCircle();
                    } else {
                      controller.crop();
                    }
                  },
                  child: cropping
                      ? SizedBox.square(
                          dimension: 16,
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.onPrimary,
                            strokeWidth: 2,
                          ),
                        )
                      : Text(localizations.save),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GridPainter extends CustomPainter {
  final divisions = 2;
  final strokeWidth = 1.0;
  final Color color = Colors.black54;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth
      ..color = color;

    final spacing = size / (divisions + 1);
    for (var i = 1; i < divisions + 1; i++) {
      // draw vertical line
      canvas.drawLine(
        Offset(spacing.width * i, 0),
        Offset(spacing.width * i, size.height),
        paint,
      );

      // draw horizontal line
      canvas.drawLine(
        Offset(0, spacing.height * i),
        Offset(size.width, spacing.height * i),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_GridPainter oldDelegate) => false;
}
