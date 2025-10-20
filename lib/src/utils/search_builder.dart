import 'dart:async';
import 'dart:developer';

import 'package:diacritic/diacritic.dart';
import 'package:flutter/foundation.dart';
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
    List<T> results,
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
  late List<T> _results;
  int _activeRequestId = 0;

  @override
  void initState() {
    super.initState();

    _query = widget.initialQuery ?? WoFormQuery('');
    _textController = TextEditingController(text: _query.raw)
      ..addListener(onTextChanged);
    _results = [];

    unawaited(loadData());
  }

  void onTextChanged() {
    _query = WoFormQuery(_textController.text);
    widget.onQueryChanged?.call(_query);
    unawaited(loadData());
  }

  Future<void> loadData() async {
    final requestId = ++_activeRequestId;
    final Iterable<T> loadedData;
    try {
      loadedData = await widget.loadData(_query);
      // Ensure this is the latest request and widget still mounted
      if (requestId != _activeRequestId || !mounted) return;
    } catch (e) {
      if (kDebugMode) log('Error in SearchBuilder.loadData : $e');
      return;
    }

    if (_query.clean.isEmpty) {
      setState(() => _results = loadedData.toList());
    }

    final scoredItems = <_ScoredItem<T>>[];
    for (final item in _results) {
      final score = widget.searchScore(_query, item);
      if (score > 0) {
        scoredItems.add(_ScoredItem(item, score));
      }
    }

    scoredItems.sort((a, b) => b.score.compareTo(a.score));
    setState(
      () => _results = scoredItems.map((s) => s.value).toList(),
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

class _ScoredItem<T> {
  _ScoredItem(this.value, this.score);

  final T value;
  final double score;
}

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
