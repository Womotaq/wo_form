import 'dart:async';
import 'dart:math';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

Future<Uint8List?> showImageCropperDialog({
  required BuildContext context,
  required Media image,

  /// For a circle cropping, use MediaService.circleAspectRatio
  double? cropAspectRatioOrCircle,
  bool showGrid = false,
  ErrorCallback? onError,
}) => showDialog(
  context: context,
  builder: (context) => _ImageCropperDialog(
    image: image,
    cropAspectRatioOrCircle: cropAspectRatioOrCircle,
    showGrid: showGrid,
    onError: onError,
  ),
);

class _ImageCropperDialog extends StatefulWidget {
  const _ImageCropperDialog({
    required this.image,
    this.cropAspectRatioOrCircle,
    this.showGrid = false,
    this.onError,
  });

  final Media image;

  /// For a circle cropping, use MediaService.circleAspectRatio
  final double? cropAspectRatioOrCircle;
  final bool showGrid;
  final ErrorCallback? onError;

  @override
  State<_ImageCropperDialog> createState() => __ImageCropperDialogState();
}

class __ImageCropperDialogState extends State<_ImageCropperDialog> {
  final controller = CropController();
  Uint8List? bytes;
  double? originalAspectRatio;
  int? imageHeight;
  int? imageWidth;
  bool cropping = false;

  @override
  void initState() {
    super.initState();
    unawaited(_init());
  }

  Future<void> _init() async {
    try {
      final bytes_ = await widget.image.bytes;
      final image = await decodeImageFromList(bytes_);
      imageHeight = image.height;
      imageWidth = image.width;
      final originalAspectRatio_ = image.width / image.height;

      setState(() {
        bytes = bytes_;
        originalAspectRatio = originalAspectRatio_;
      });
    } catch (error, stackTrace) {
      widget.onError?.call(error, stackTrace);
      if (mounted) Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (bytes == null) {
      return const Dialog(
        backgroundColor: Colors.transparent,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final woFormTheme = WoFormTheme.of(context);

    final cropCircle =
        widget.cropAspectRatioOrCircle == MediaService.circleAspectRatio;
    final localizations = context.read<MediaService>().getCropLocalizations(
      context,
    );

    return AlertDialog(
      title: Text(localizations.title),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: woFormTheme?.maxWidth ?? double.infinity,
        ),
        child: AspectRatio(
          aspectRatio: originalAspectRatio!,
          child: Crop(
            image: bytes!,
            controller: controller,
            aspectRatio: cropCircle ? 1 : widget.cropAspectRatioOrCircle,
            onCropped: (result) async {
              switch (result) {
                case CropSuccess(:final croppedImage):
                  Navigator.of(context).pop(croppedImage);
                case CropFailure(:final cause):
                  setState(() => cropping = false);
                  (woFormTheme?.onSubmitError ?? WoForm.defaultOnSubmitError)
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
                ? InitialRectBuilder.withBuilder((
                    viewportRect,
                    imageRect,
                  ) {
                    final marginX = min(24, max(imageWidth! - 48, 0) / 2);
                    final marginY = min(24, max(imageHeight! - 48, 0) / 2);
                    return Rect.fromLTRB(
                      viewportRect.left + marginX,
                      viewportRect.top + marginY,
                      viewportRect.right - marginX,
                      viewportRect.bottom - marginY,
                    );
                  })
                : null,
          ),
        ),
      ),
      actions: [
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
      canvas
        // draw vertical line
        ..drawLine(
          Offset(spacing.width * i, 0),
          Offset(spacing.width * i, size.height),
          paint,
        )
        // draw horizontal line
        ..drawLine(
          Offset(0, spacing.height * i),
          Offset(size.width, spacing.height * i),
          paint,
        );
    }
  }

  @override
  bool shouldRepaint(_GridPainter oldDelegate) => false;
}

typedef ErrorCallback = void Function(Object exception, StackTrace stackTrace);
