import 'package:flutter/material.dart';
import 'package:wo_form/src/utils/shrinkable_scaffold.dart';
import 'package:wo_form/wo_form.dart';

// TODO : use SearchBuilder

class SearchField<T> extends StatelessWidget {
  SearchField.uniqueChoice({
    required this.values,
    required this.onSelected,
    T? selectedValue,
    this.valueBuilder,
    this.helpValueBuilder,
    this.hintText,
    Widget Function(T?)? selectedBuilder,
    this.showArrow = true,
    this.searchScore,
    this.provider,
    this.searchScreenLayout = LayoutMethod.scrollable,
    this.searchScreenBuilder,
    this.openSearchScreen,
    super.key,
  }) : _builder = null,
       selectedValues = [selectedValue],
       selectedBuilder = selectedBuilder == null
           ? null
           : ((v) => selectedBuilder(v.firstOrNull));

  SearchField.multipleChoices({
    required Widget Function(VoidCallback? onPressed) builder,
    required this.values,
    required this.onSelected,
    this.selectedValues = const [],
    this.valueBuilder,
    this.helpValueBuilder,
    this.hintText,
    this.searchScore,
    this.provider,
    this.searchScreenLayout = LayoutMethod.scrollable,
    this.searchScreenBuilder,
    this.openSearchScreen,
    super.key,
  }) : selectedBuilder = ((_) => const SizedBox.shrink()),
       _builder = builder,
       showArrow = false;

  final Widget Function(VoidCallback? onPressed)? _builder;
  final Iterable<T> values;
  final void Function(T value)? onSelected;
  final Iterable<T?> selectedValues;
  final Widget Function(T? value)? valueBuilder;
  final Widget? Function(T value)? helpValueBuilder;
  final String? hintText;
  final Widget Function(Iterable<T?> values)? selectedBuilder;
  final bool showArrow;
  final double Function(WoFormQuery query, T value)? searchScore;
  final Widget Function({required Widget child})? provider;
  final LayoutMethod searchScreenLayout;
  final SearchScreenDef<T>? searchScreenBuilder;
  final PushDef? openSearchScreen;

  @override
  Widget build(BuildContext context) {
    final valueBuilderSafe =
        valueBuilder ??
        (e) => Text(
          e == null && hintText != null ? hintText! : e.toString(),
        );
    final selectedBuilderSafe =
        selectedBuilder ??
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
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).inputDecorationTheme.fillColor,
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: selectedBuilderSafe(selectedValues),
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
    FocusScope.of(context).unfocus();

    ListTile tileBuilder(BuildContext context, T e) {
      final theme = Theme.of(context);

      final selected = selectedValues.contains(e);
      final subtitle = helpValueBuilder?.call(e);
      return ListTile(
        title: valueBuilderSafe(e),
        subtitle: subtitle == null
            ? null
            : DefaultTextStyle(
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.disabledColor,
                ),
                child: subtitle,
              ),
        selected: selected,
        selectedColor: theme.colorScheme.onSurface,
        selectedTileColor: theme.colorScheme.primaryContainer,
      );
    }

    final searchScreen = Builder(
      builder: (context) => (provider ?? ({required Widget child}) => child)(
        child: (searchScreenBuilder ?? SearchScreen.new).call(
          values: values,
          tileBuilder: tileBuilder,
          onSelect: (value) {
            Navigator.of(context).pop();
            onSelected!(value);
          },
          searchScore: searchScore,
          layout: searchScreenLayout,
        ),
      ),
    );

    (openSearchScreen ??
        (searchScore == null ? Push.menu : _fullscreenModalBottomSheet))(
      context: context,
      child: searchScreen,
      layout: searchScreenLayout,
    );
  }

  Future<V?> _fullscreenModalBottomSheet<V extends Object?>({
    required BuildContext context,
    required Widget child,
    LayoutMethod layout = LayoutMethod.scrollable,
  }) => Push.modalBottomSheet(
    context: context,
    child: child,
    layout: layout,
    initialBottomSheetSize: .9,
  );
}

typedef SearchScreenDef<T> =
    Widget Function({
      required Iterable<T> values,
      required Widget Function(BuildContext context, T value) tileBuilder,
      required void Function(T value) onSelect,
      double Function(WoFormQuery query, T value)? searchScore,
      LayoutMethod layout,
      Key? key,
    });

class SearchScreen<T> extends StatefulWidget {
  const SearchScreen({
    required this.values,
    required this.tileBuilder,
    required this.onSelect,
    this.bottomChildren,
    this.searchScore,
    this.layout = LayoutMethod.scrollable,
    this.onNotFound,
    super.key,
  });

  final Iterable<T> values;
  final Widget Function(BuildContext context, T value) tileBuilder;
  final void Function(T value) onSelect;
  final List<Widget>? bottomChildren;
  final double Function(WoFormQuery query, T value)? searchScore;
  final LayoutMethod layout;
  final List<Widget> Function(WoFormQuery query)? onNotFound;

  @override
  State<SearchScreen<T>> createState() => SearchScreenState();
}

class SearchScreenState<T> extends State<SearchScreen<T>> {
  // TODO : clear query button
  WoFormQuery query = WoFormQuery('');

  @override
  Widget build(BuildContext context) {
    final searchResults = widget.searchScore != null && query.clean.isNotEmpty
        ? (widget.values
                  .map((value) => (value, widget.searchScore!(query, value)))
                  .where((e) => e.$2 > 0)
                  .toList()
                ..sort((e1, e2) => e2.$2.compareTo(e1.$2)))
              .map((e) => e.$1)
        : widget.values;

    final scrollController = ScrollControllerProvider.of(context);

    final body = ListView(
      padding: EdgeInsets.zero,
      controller: scrollController,
      shrinkWrap: widget.layout == LayoutMethod.shrinkWrap,
      children: [
        if (searchResults.isEmpty)
          ...?widget.onNotFound?.call(query)
        else
          ...searchResults.map(
            (e) => InkWell(
              onTap: () => widget.onSelect(e),
              child: widget.tileBuilder(context, e),
            ),
          ),
        ...?widget.bottomChildren,
      ],
    );

    return widget.searchScore == null
        ? body
        : ShrinkableScaffold(
            shrinkWrap: widget.layout == LayoutMethod.shrinkWrap,
            appBarHeight: 56 + 32,
            appBarTitle: TextField(
              autofocus: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => setState(() => query = WoFormQuery(value)),
              // Flutter's default behaviour :
              // - web : tapping outside instantly unfocuses the field.
              // - mobile : tapping outside does nothing.
              // wo_form decided to unfocus search fields on tap down.
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
            ),
            body: body,
          );
  }
}
