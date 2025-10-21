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
  late final bool _ownFocusNode;
  bool _overlayIsFocused = false;
  OverlayEntry? _overlayEntry;
  List<PlacePrediction> predictions = [];
  int _requestId = 0;

  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    subject.stream
        .distinct()
        .debounceTime(widget.debounceDuration ?? WoFormTheme.DEBOUNCE_DURATION)
        .listen(textChanged);

    // Add focus listener

    _ownFocusNode = widget.focusNode == null;
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(focusListener);
  }

  @override
  void dispose() {
    unawaited(subject.close());
    removeOverlay();
    _focusNode.removeListener(focusListener);
    if (_ownFocusNode) _focusNode.dispose();
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
    // requestId: ensure we ignore out-of-order responses
    final currentRequest = ++_requestId;

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

      // If a newer request was started while we awaited, ignore this response
      if (currentRequest != _requestId || !mounted) return;

      if (kDebugMode) {
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
      if (mounted) {
        Overlay.of(context).insert(_overlayEntry!);
      }
    } catch (e) {
      // If a newer request was started, ignore the error from this stale
      // request
      if (currentRequest != _requestId) return;
      if (kDebugMode) _showSnackBar('An error occured : $e');
    }
  }

  OverlayEntry? _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return null;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) {
        final theme = Theme.of(context);

        return Positioned(
          left: offset.dx,
          top: size.height + offset.dy,
          width: size.width,
          child: CompositedTransformFollower(
            showWhenUnlinked: false,
            link: _layerLink,
            offset: Offset(0, size.height + 5.0),
            child: GestureDetector(
              onTapDown: (_) => _overlayIsFocused = true,
              onTapCancel: () => _overlayIsFocused = false,
              onTapUp: (_) => _overlayIsFocused = false,
              child: Material(
                elevation: 4,
                // Same color as text input
                color: theme.inputDecorationTheme.filled
                    ? theme.inputDecorationTheme.fillColor
                    : null,
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
                        widget.textEditingController.text =
                            prediction.description;
                        widget.onChanged?.call(prediction.description);
                        removeOverlay();
                      },
                      child: widget.itemBuilder != null
                          ? widget.itemBuilder!(context, index, prediction)
                          : Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(prediction.description),
                            ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void focusListener() {
    if (!_focusNode.hasFocus && !_overlayIsFocused) {
      removeOverlay();
    }
  }

  void removeOverlay() {
    predictions.clear();
    _overlayEntry?.remove();
    _overlayEntry = null;
    _overlayIsFocused = false;
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
