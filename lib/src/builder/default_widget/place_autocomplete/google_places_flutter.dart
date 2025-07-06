// Credits : https://pub.dev/packages/google_places_flutter

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart'; // TODO : remove this dependency
import 'package:wo_form/src/builder/default_widget/place_autocomplete/_export.dart';

class PlaceAutoCompleteTextField extends StatefulWidget {
  const PlaceAutoCompleteTextField({
    required this.textEditingController,
    required this.googleAPIKey,
    required this.onChanged,
    this.onSelectedWithLatLng,
    this.debounceTime = 600,
    this.inputDecoration = const InputDecoration(),
    this.textStyle = const TextStyle(),
    this.itemBuilder,
    this.boxDecoration,
    this.seperatedBuilder,
    this.padding,
    this.showError = true,
    this.focusNode,
    this.placeType,
    this.language = 'en',
    this.validator,
    this.countries = const [],
    this.latitude,
    this.longitude,
    this.radius,
    this.onFieldSubmitted,
    this.textInputAction,
    super.key,
  });

  final InputDecoration inputDecoration;
  final void Function(String? text)? onChanged;

  /// If provided, will be called right after [onChanged],
  /// with a Prediction where the latitude and longitude are provided.
  final void Function(Prediction prediction)? onSelectedWithLatLng;

  final TextStyle textStyle;
  final String googleAPIKey;
  final int debounceTime;
  final List<String>? countries;
  final TextEditingController textEditingController;
  final ListItemBuilder? itemBuilder;
  final Widget? seperatedBuilder;
  final BoxDecoration? boxDecoration;
  final bool showError;
  final EdgeInsets? padding;
  final FocusNode? focusNode;
  final PlaceType? placeType;
  final String? language;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;

  final String? Function(String?, BuildContext)? validator;

  final double? latitude;
  final double? longitude;

  /// This is expressed in **meters**
  final int? radius;

  @override
  State<PlaceAutoCompleteTextField> createState() =>
      _PlaceAutoCompleteTextFieldState();
}

class _PlaceAutoCompleteTextFieldState
    extends State<PlaceAutoCompleteTextField> {
  final subject = PublishSubject<String>();
  late final FocusNode _focusNode;
  OverlayEntry? _overlayEntry;
  List<Prediction> predictions = [];

  final LayerLink _layerLink = LayerLink();

  final _dio = Dio();
  CancelToken? _cancelToken = CancelToken();

  @override
  void initState() {
    super.initState();
    subject.stream
        .distinct()
        .debounceTime(Duration(milliseconds: widget.debounceTime))
        .listen(textChanged);

    // Add focus listener
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) removeOverlay();
    });
  }

  @override
  void dispose() {
    subject.close();
    _cancelToken?.cancel();
    removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        padding: widget.padding,
        alignment: Alignment.centerLeft,
        decoration: widget.boxDecoration,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: widget.inputDecoration,
                style: widget.textStyle,
                controller: widget.textEditingController,
                focusNode: _focusNode,
                textInputAction: widget.textInputAction ?? TextInputAction.done,
                onFieldSubmitted: widget.onFieldSubmitted,
                validator: (inputString) {
                  return widget.validator?.call(inputString, context);
                },
                onChanged: subject.add,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getLocation(String text) async {
    if (text.isEmpty) return removeOverlay();

    var apiURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$text&key=${widget.googleAPIKey}&language=${widget.language}';

    if (widget.countries != null) {
      for (var i = 0; i < widget.countries!.length; i++) {
        final country = widget.countries![i];

        if (i == 0) {
          apiURL = '$apiURL&components=country:$country';
        } else {
          apiURL = '$apiURL|country:$country';
        }
      }
    }
    if (widget.placeType != null) {
      apiURL += '&types=${widget.placeType?.apiString}';
    }

    if (widget.latitude != null &&
        widget.longitude != null &&
        widget.radius != null) {
      apiURL = '$apiURL&location=${widget.latitude},${widget.longitude}'
          '&radius=${widget.radius}';
    }

    if (_cancelToken?.isCancelled == false) {
      _cancelToken?.cancel();
      _cancelToken = CancelToken();
    }

    // print("urlll $apiURL");
    try {
      const proxyURL = 'https://cors-anywhere.herokuapp.com/';
      final url = kIsWeb ? proxyURL + apiURL : apiURL;
      final response = await _dio.get<Map<String, dynamic>>(url);

      if (widget.showError && context.mounted) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      }

      final map = response.data ?? {};
      if (map.containsKey('error_message')) {
        // ignore: only_throw_errors
        throw map;
      }

      final subscriptionResponse = PlacesAutocompleteResponse.fromJson(map);

      predictions.clear();
      if (subscriptionResponse.predictions!.isNotEmpty &&
          widget.textEditingController.text.trim().isNotEmpty) {
        predictions.addAll(subscriptionResponse.predictions!);
      }

      _overlayEntry?.remove();
      _overlayEntry = _createOverlayEntry();
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        Overlay.of(context).insert(_overlayEntry!);
      }
    } catch (e) {
      final errorHandler = ErrorHandler.internal().handleError(e);
      _showSnackBar('${errorHandler.message}');
    }
  }

  Future<void> textChanged(String text) async {
    if (text.isNotEmpty) {
      await getLocation(text);
    } else {
      removeOverlay();
    }
    widget.onChanged?.call(text);
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
                return InkWell(
                  onTap: () {
                    final selectedData = predictions[index];
                    if (index < predictions.length) {
                      widget.onChanged?.call(selectedData.description);

                      if (widget.onSelectedWithLatLng != null) {
                        completeWithLatLng(selectedData);
                      }
                      removeOverlay();
                    }
                  },
                  child: widget.itemBuilder != null
                      ? widget.itemBuilder!(context, index, predictions[index])
                      : Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(predictions[index].description!),
                        ),
                );
              },
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

    if (_cancelToken?.isCancelled == false) {
      _cancelToken?.cancel();
    }
  }

  Future<void> completeWithLatLng(Prediction prediction) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?placeid=${prediction.placeId}&key=${widget.googleAPIKey}';
    try {
      final response = await _dio.get<Map<String, dynamic>>(url);

      final placeDetails = PlaceDetails.fromJson(response.data ?? {});

      prediction
        ..lat = placeDetails.result!.geometry!.location!.lat.toString()
        ..lng = placeDetails.result!.geometry!.location!.lng.toString();

      widget.onSelectedWithLatLng?.call(prediction);
    } catch (e) {
      final errorHandler = ErrorHandler.internal().handleError(e);
      _showSnackBar('${errorHandler.message}');
    }
  }

  void _showSnackBar(String errorData) {
    if (widget.showError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(errorData)));
    }
  }
}

typedef ListItemBuilder = Widget Function(
    BuildContext context, int index, Prediction prediction);
