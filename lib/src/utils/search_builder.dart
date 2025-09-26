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
  const SearchBuilder({
    required this.data,
    required this.searchScore,
    required this.builder,
    this.initialQuery,
    this.onQueryChanged,
    super.key,
  });

  /// The data you want to search through.
  final Iterable<T> data;

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

  final WoFormQuery? initialQuery;
  final ValueChanged<WoFormQuery>? onQueryChanged;

  @override
  State<SearchBuilder<T>> createState() => _SearchBuilderState<T>();
}

class _SearchBuilderState<T> extends State<SearchBuilder<T>> {
  late final TextEditingController _textController;
  late List<T> _results;

  @override
  void initState() {
    super.initState();

    _textController = TextEditingController(text: widget.initialQuery?.raw)
      ..addListener(_filterData);
    _results = widget.data.toList();

    if (widget.initialQuery != null) {
      _filterData();
    }
  }

  // Search, scoring, and filtering logic
  void _filterData() {
    final query = WoFormQuery(_textController.text);

    if (query.clean.isEmpty) {
      // If the query is empty, return all data
      setState(() => _results = widget.data.toList());
      widget.onQueryChanged?.call(query);
      return;
    }

    final scoredItems = <_ScoredItem<T>>[];
    for (final item in widget.data) {
      final score = widget.searchScore(query, item);
      if (score > 0) {
        scoredItems.add(_ScoredItem(item, score));
      }
    }

    scoredItems.sort((a, b) => b.score.compareTo(a.score));
    setState(
      () => _results = scoredItems.map((s) => s.value).toList(),
    );
    widget.onQueryChanged?.call(query);
  }

  @override
  void didUpdateWidget(covariant SearchBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.data != oldWidget.data ||
        widget.searchScore != oldWidget.searchScore) {
      _filterData();
    }
  }

  @override
  void dispose() {
    _textController
      ..removeListener(_filterData)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, _results, _textController);
}

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
}
