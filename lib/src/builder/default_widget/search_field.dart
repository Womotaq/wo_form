import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:wo_form/example/app.dart';

class SearchField<T> extends StatelessWidget {
  SearchField.uniqueChoice({
    required this.values,
    required this.onSelected,
    T? selectedValue,
    this.valueBuilder,
    this.helpValueBuilder,
    this.hintText,
    Widget Function(T?)? previewBuilder,
    this.showArrow = true,
    this.bottomChildren,
    this.searcher,
    super.key,
  })  : _builder = null,
        selectedValues = [selectedValue],
        previewBuilder = previewBuilder == null
            ? null
            : ((v) => previewBuilder(v.firstOrNull));

  SearchField.multipleChoices({
    required Widget Function(VoidCallback? onPressed) builder,
    required this.values,
    required this.onSelected,
    this.selectedValues = const [],
    this.valueBuilder,
    this.helpValueBuilder,
    this.hintText,
    this.bottomChildren,
    this.searcher,
    super.key,
  })  : previewBuilder = ((_) => const SizedBox.shrink()),
        _builder = builder,
        showArrow = false;

  final Widget Function(VoidCallback? onPressed)? _builder;
  final Iterable<T> values;
  final void Function(T value)? onSelected;
  final Iterable<T?> selectedValues;
  final Widget Function(T? value)? valueBuilder;
  final Widget? Function(T value)? helpValueBuilder;
  final String? hintText;
  final Widget Function(Iterable<T?> values)? previewBuilder;
  final bool showArrow;
  final List<MenuItemButton>? bottomChildren;
  final double Function(String query, T value)? searcher;

  @override
  Widget build(BuildContext context) {
    final valueBuilderSafe = valueBuilder ??
        (e) => Text(
              e == null && hintText != null ? hintText! : e.toString(),
            );
    final previewBuilderSafe = previewBuilder ??
        (e) => Wrap(
              // mainAxisSize: MainAxisSize.min,
              spacing: 8,
              runSpacing: 8,
              children: e.map(valueBuilderSafe).toList(),
            );

    if (_builder != null) {
      return _builder(
        onSelected == null
            ? null
            : () => onPressed(
                  context,
                  valueBuilderSafe,
                ),
      );
    }

    final themedBorder = Theme.of(context).inputDecorationTheme.border;

    return Opacity(
      opacity: onSelected == null ? 0.3 : 1,
      child: InkWell(
        borderRadius: themedBorder is OutlineInputBorder
            ? themedBorder.borderRadius
            : themedBorder is UnderlineInputBorder
                ? themedBorder.borderRadius
                : BorderRadius.zero,
        onTap: onSelected == null
            ? null
            : () => onPressed(
                  context,
                  valueBuilderSafe,
                ),
        child: InputDecorator(
          decoration: const InputDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: previewBuilderSafe(selectedValues),
              ),
              if (showArrow) const Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed(
    BuildContext context,
    Widget Function(T value) valueBuilderSafe,
  ) {
    ListTile tileBuilder(BuildContext context, T e) {
      final theme = Theme.of(context);

      final selected = selectedValues.contains(e);
      final subtitle = helpValueBuilder?.call(e);
      return ListTile(
        title: valueBuilderSafe(e),
        subtitle: subtitle == null
            ? null
            : DefaultTextStyle(
                style: theme.textTheme.labelMedium!
                    .copyWith(color: theme.disabledColor),
                child: subtitle,
              ),
        selected: selected,
        selectedColor: theme.colorScheme.onSurface,
        selectedTileColor: theme.colorScheme.primaryContainer,
        onTap: () {
          Navigator.of(context).pop();
          onSelected!(e);
        },
      );
    }

    if (searcher != null) {
      context.pushPage(
        Scaffold(
          appBar: AppBar(),
          body: SearchScreen(
            values: values,
            tileBuilder: tileBuilder,
            bottomChildren: bottomChildren,
            searcher: searcher,
          ),
        ),
      );
    } else {
      showPopover(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.surfaceBright,
        constraints: BoxConstraints(
          maxWidth: 256,
          minWidth: searcher == null ? 0 : 256,
          maxHeight: 384,
          minHeight: searcher == null ? 0 : 384,
        ),
        bodyBuilder: (popoverContext) => SearchScreen(
          values: values,
          tileBuilder: tileBuilder,
          bottomChildren: bottomChildren,
          searcher: searcher,
        ),
      );
    }
  }
}

class SearchScreen<T> extends StatefulWidget {
  const SearchScreen({
    required this.values,
    required this.tileBuilder,
    this.bottomChildren,
    this.searcher,
    super.key,
  });

  final Iterable<T> values;
  final Widget Function(BuildContext context, T value) tileBuilder;
  final List<MenuItemButton>? bottomChildren;
  final double Function(String query, T value)? searcher;

  @override
  State<SearchScreen<T>> createState() => SearchScreenState();
}

class SearchScreenState<T> extends State<SearchScreen<T>> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: [
        if (widget.searcher != null)
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              autofocus: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => setState(() => query = value),
            ),
          ),
        ...((widget.searcher != null && query.isNotEmpty)
                // LATER : sort
                ? (widget.values
                        .map((value) => (value, widget.searcher!(query, value)))
                        .where((e) => e.$2 > 0)
                        .toList()
                      ..sort((e1, e2) => e2.$2.compareTo(e1.$2)))
                    .map((e) => e.$1)
                : widget.values)
            .map<Widget>(
          (e) => widget.tileBuilder(context, e),
        ),
        ...?widget.bottomChildren,
      ],
    );
  }
}
