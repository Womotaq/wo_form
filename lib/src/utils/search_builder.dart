import 'dart:async';

import 'package:collection/collection.dart';
import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';

/// A widget that handles the logic for filtering and ranking a local dataset
/// of type [T] based on user text input, and then uses a [builder] function to
/// render the UI.
///
/// This component abstracts away the boilerplate of managing a
/// [TextEditingController], listening to text changes, and performing the
/// filtering and sorting of [data].
class SearchBuilder<T> extends StatefulWidget {
  SearchBuilder({
    required this.searchScore,
    required this.builder,
    Iterable<T>? data,

    /// If set, [data] won't be used.
    LoadDataDef<T>? loadData,
    this.initialQuery,
    this.onQueryChanged,
    super.key,
  }) : assert(
         (data != null) || (loadData != null),
         "One of 'data' or 'loadData' must be specified.",
       ),
       loadData = loadData ?? ((_) => Future.value(data));

  /// A function that calculates how well a piece of [data] matches the search.
  ///
  /// This function must return a score between 0.0 (no match) and 1.0
  /// (perfect match).
  ///
  /// The [query] passed to this function is guaranteed to be lowercase and
  /// without diacritics (e.g., accents, umlauts).
  final double Function(WoFormQuery query, T value) searchScore;

  /// The widget builder used to render the search interface and results.
  ///
  /// It provides the current state of the search operation:
  ///
  /// 1. [context]: The BuildContext for the widget tree.
  /// 2. [results]: The list of items from the original [data] that matched
  ///    the current query, ordered by their score (highest first).
  /// 3. [textController]: A controller for the search input field.
  ///
  /// If the query is empty, all the data is returned in results.
  final Widget Function(
    BuildContext context,
    FutureData<List<T>> results,
    TextEditingController textController,
  )
  builder;

  /// A method that load the data you want to search through, based on
  /// the query.
  final Future<Iterable<T>> Function(WoFormQuery) loadData;

  final WoFormQuery? initialQuery;
  final ValueChanged<WoFormQuery>? onQueryChanged;

  @override
  State<SearchBuilder<T>> createState() => _SearchBuilderState<T>();
}

class _SearchBuilderState<T> extends State<SearchBuilder<T>> {
  late final TextEditingController _textController;
  late WoFormQuery _query;
  late FutureData<List<T>> _results;
  int _activeRequestId = 0;

  @override
  void initState() {
    super.initState();

    _query = widget.initialQuery ?? WoFormQuery('');
    _textController = TextEditingController(text: _query.raw)
      ..addListener(onTextChanged);
    _results = const DataLoading('initialData', []);

    unawaited(loadData());
  }

  void onTextChanged() {
    _query = WoFormQuery(_textController.text);
    widget.onQueryChanged?.call(_query);
    unawaited(loadData());
  }

  Future<void> loadData() async {
    /// Query hasn't changed, don't need to load data
    if (_results.id == _query.raw) return;

    final requestId = ++_activeRequestId;
    setState(() => _results = DataLoading(_query.raw, _results.data));

    final Iterable<T> loadedData;
    try {
      loadedData = await widget.loadData(_query);
      // Ensure this is the latest request and widget still mounted
      if (requestId != _activeRequestId || !mounted) return;
    } catch (error) {
      setState(() => _results = DataError(_query.raw, error));
      return;
    }

    Iterable<(double, T)> scoredItems = loadedData
        .map((item) => (widget.searchScore(_query, item), item))
        .toList()
        .sortedBy((data) => -data.$1);
    if (_query.clean.isNotEmpty) {
      scoredItems = scoredItems.where((data) => data.$1 > 0);
    }

    setState(
      () => _results = DataValue(
        _query.raw,
        scoredItems.map((s) => s.$2).toList(),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant SearchBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.loadData != oldWidget.loadData ||
        widget.searchScore != oldWidget.searchScore) {
      unawaited(loadData());
    }
  }

  @override
  void dispose() {
    _textController
      ..removeListener(onTextChanged)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, _results, _textController);
}

typedef LoadDataDef<T> = Future<Iterable<T>> Function(WoFormQuery query);

class WoFormQuery {
  WoFormQuery(this.raw) : clean = toQuery(raw);

  final String raw;
  final String clean;

  /// Return a string adapted to querying
  static String toQuery(String str) => removeDiacritics(str.toLowerCase());

  /// Default method that returns a search score for a given [text].
  double searchScore(String? text) {
    if (text == null) return 0;
    final cleanText = WoFormQuery.toQuery(text);

    if (cleanText == clean) return 1;
    if (cleanText.startsWith(clean)) return .9;
    if (cleanText.contains(clean)) return .8;

    for (final queryWord in clean.split(' ')) {
      if (cleanText.contains(queryWord)) return .7;
    }

    return 0;
  }
}

sealed class FutureData<T> {
  const FutureData();

  /// An identifier for the data, like an uuid or a query
  String get id;
  T? get data;

  bool get isLoading => this is DataLoading;
  Object? get error => null;
}

final class DataLoading<T> extends FutureData<T> {
  /// Waiting for the first data
  const DataLoading(this.id, this.data);

  @override
  final String id;

  /// The data before the loading was triggered.
  @override
  final T? data;
}

final class DataValue<T> extends FutureData<T> {
  DataValue(this.id, this.data)
    : error = data == null
          ? Exception('Data not found (dataId: $id, dataType: $T)')
          : null;

  @override
  final String id;
  @override
  final T? data;
  @override
  final Object? error;
}

final class DataError<T> extends FutureData<T> {
  /// An error occured while loading the data
  const DataError(this.id, this.error);

  @override
  final String id;
  @override
  T? get data => null;
  @override
  final Object error;
}
