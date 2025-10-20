// Credits : https://pub.dev/packages/google_places_flutter

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart'; // TODO : remove this dependency ?
import 'package:wo_form/wo_form.dart';

class PlaceAutocompleteTextField extends StatefulWidget {
  const PlaceAutocompleteTextField({
    required this.textEditingController,
    required this.onChanged,
    this.onSelectedWithDetails,
    this.debounceDuration,
    this.placeType,
    this.language,
    this.countries = const [],
    this.latitude,
    this.longitude,
    this.radius,

    // Ui
    this.itemBuilder,
    this.seperatedBuilder,

    // TextField parameters
    this.inputDecoration,
    this.textStyle,
    this.focusNode,
    this.textInputAction,
    this.autofocus = false,
    this.textCapitalization,
    this.onFieldSubmitted,
    this.onTapOutside,
    this.onTapUpOutside,
    super.key,
  });

  final void Function(String? text)? onChanged;

  /// If provided, will be called when a prediction is selected,
  /// right after [onChanged].
  final void Function(PlaceDetails details)? onSelectedWithDetails;

  /// --- API ---

  /// Defaults to [WoFormTheme.DEBOUNCE_DURATION].
  final Duration? debounceDuration;
  final PlaceType? placeType;
  final String? language;
  final List<String>? countries;
  final double? latitude;
  final double? longitude;

  /// This is expressed in **meters**
  final int? radius;

  /// --- UI ---
  final ListItemBuilder? itemBuilder;
  final Widget? seperatedBuilder;

  /// --- TEXT FIELD ---
  final InputDecoration? inputDecoration;
  final TextStyle? textStyle;
  final TextEditingController textEditingController;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<PointerEvent>? onTapOutside;
  final ValueChanged<PointerUpEvent>? onTapUpOutside;

  @override
  State<PlaceAutocompleteTextField> createState() =>
      _PlaceAutoCompleteTextFieldState();
}

class _PlaceAutoCompleteTextFieldState
    extends State<PlaceAutocompleteTextField> {
  final subject = PublishSubject<String>();
  late final FocusNode _focusNode;
  bool _overlayIsFocused = false;
  OverlayEntry? _overlayEntry;
  List<PlacePrediction> predictions = [];

  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    subject.stream
        .distinct()
        .debounceTime(widget.debounceDuration ?? WoFormTheme.DEBOUNCE_DURATION)
        .listen(textChanged);

    // Add focus listener
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && !_overlayIsFocused) {
        removeOverlay();
      }
    });
  }

  @override
  void dispose() {
    unawaited(subject.close());
    removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: widget.inputDecoration,
                style: widget.textStyle,
                controller: widget.textEditingController,
                focusNode: _focusNode,
                autofocus: widget.autofocus,
                textInputAction: widget.textInputAction ?? TextInputAction.done,
                textCapitalization:
                    widget.textCapitalization ?? TextCapitalization.none,
                onFieldSubmitted: widget.onFieldSubmitted,
                onChanged: subject.add,
                onTapOutside: widget.onTapOutside,
                onTapUpOutside: widget.onTapUpOutside,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void textChanged(String text) {
    if (text.isNotEmpty) {
      unawaited(updatePredictions(text));
    } else {
      removeOverlay();
    }
    widget.onChanged?.call(text);
  }

  Future<void> updatePredictions(String text) async {
    if (text.isEmpty) return removeOverlay();

    final language = widget.language ?? Intl.defaultLocale;
    var input = '$text&language=$language';

    if (widget.countries != null) {
      for (var i = 0; i < widget.countries!.length; i++) {
        final country = widget.countries![i];

        if (i == 0) {
          input = '$input&components=country:$country';
        } else {
          input = '$input|country:$country';
        }
      }
    }
    if (widget.placeType != null) {
      input += '&types=${widget.placeType?.apiString}';
    }

    if (widget.latitude != null &&
        widget.longitude != null &&
        widget.radius != null) {
      input =
          '$input&location=${widget.latitude},${widget.longitude}'
          '&radius=${widget.radius}';
    }

    /// 'https://maps.googleapis.com/maps/api/place/autocomplete/json?key=${widget.googleAPIKey}&input=' + input
    final getPlacePredictions = context
        .read<PlaceRepositoryMixin?>()
        ?.getPlacePredictions;
    if (getPlacePredictions == null) {
      throw UnimplementedError(
        'You need to provide a PlaceRepository for address autocompletion : \n'
        '```\n'
        'RepositoryProvider<PlaceRepositoryMixin>(\n'
        '  create: (context) => YourPlaceRepository(),\n'
        '),\n'
        '```',
      );
    }

    try {
      final response = await getPlacePredictions(input);

      if (kDebugMode && context.mounted) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      }

      if (response.errorMessage != null) {
        // ignore: only_throw_errors
        throw response;
      }

      predictions
        ..clear()
        ..addAll(response.predictions);

      _overlayEntry?.remove();
      _overlayEntry = _createOverlayEntry();
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        Overlay.of(context).insert(_overlayEntry!);
      }
    } catch (e) {
      if (kDebugMode) _showSnackBar('An error occured : $e');
    }
  }

  OverlayEntry? _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return null;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: size.height + offset.dy,
        width: size.width,
        child: CompositedTransformFollower(
          showWhenUnlinked: false,
          link: _layerLink,
          offset: Offset(0, size.height + 5.0),
          child: GestureDetector(
            onPanDown: (_) => _overlayIsFocused = true,
            onPanEnd: (_) => _overlayIsFocused = false,
            onPanCancel: () => _overlayIsFocused = false,
            child: Material(
              elevation: 4,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: predictions.length,
                separatorBuilder: (context, pos) =>
                    widget.seperatedBuilder ?? const SizedBox(),
                itemBuilder: (BuildContext context, int index) {
                  final prediction = predictions[index];
                  return InkWell(
                    onTap: () {
                      widget.onChanged?.call(prediction.description);

                      if (widget.onSelectedWithDetails != null) {
                        unawaited(completeWithDetails(prediction));
                      }
                      removeOverlay();
                    },
                    child: widget.itemBuilder != null
                        ? widget.itemBuilder!(context, index, prediction)
                        : Container(
                            padding: const EdgeInsets.all(10),
                            child: Text(prediction.description),
                          ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  void removeOverlay() {
    predictions.clear();
    _overlayEntry?.remove();
    _overlayEntry = null;
    _overlayIsFocused = false;
  }

  Future<void> completeWithDetails(PlacePrediction prediction) async {
    final placeId = prediction.placeId;
    if (placeId == null) return;

    /// 'https://maps.googleapis.com/maps/api/place/details/json?key=${widget.googleAPIKey}&placeid=' + placeId
    try {
      final getPlaceDetails = context
          .read<PlaceRepositoryMixin?>()
          ?.getPlaceDetails;
      if (getPlaceDetails == null) {
        throw UnimplementedError(
          'You need to provide a PlaceRepository for '
          'address autocompletion : \n'
          '```\n'
          'RepositoryProvider<PlaceRepositoryMixin>(\n'
          '  create: (context) => YourPlaceRepository(),\n'
          '),\n'
          '```',
        );
      }

      final response = await getPlaceDetails(placeId);
      if (response.status == PlacesDetailsStatus.OK) {
        widget.onSelectedWithDetails?.call(response.result);
      }
      // TODO : communicate in case of error
    } catch (e) {
      if (kDebugMode) _showSnackBar('An error occured : $e');
    }
  }

  void _showSnackBar(String errorData) {
    if (kDebugMode) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorData)),
      );
    }
  }
}

typedef ListItemBuilder =
    Widget Function(
      BuildContext context,
      int index,
      PlacePrediction prediction,
    );
