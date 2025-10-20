import 'package:flutter/material.dart';
import 'package:wo_form/src/utils/shrinkable_scaffold.dart';
import 'package:wo_form/wo_form.dart';

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
    this.searchSettings,
    this.initialQuery,
    this.onQueryChanged,
    this.provider,
    this.searchScreenLayout = LayoutMethod.scrollable,
    this.searchScreenBuilder,
    this.autofocus = true,
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
    this.searchSettings,
    this.initialQuery,
    this.onQueryChanged,
    this.provider,
    this.searchScreenLayout = LayoutMethod.scrollable,
    this.searchScreenBuilder,
    this.autofocus = true,
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
  final SearchSettings<T>? searchSettings;
  final WoFormQuery? initialQuery;
  final void Function(WoFormQuery query)? onQueryChanged;
  final Widget Function({required Widget child})? provider;
  final LayoutMethod searchScreenLayout;
  final SearchScreenDef<T>? searchScreenBuilder;
  final bool autofocus;
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

    final theme = Theme.of(context);
    final themedBorder = theme.inputDecorationTheme.border;
    final borderRadius = themedBorder is OutlineInputBorder
        ? themedBorder.borderRadius
        : themedBorder is UnderlineInputBorder
        ? themedBorder.borderRadius
        : BorderRadius.zero;

    return Opacity(
      opacity: onSelected == null ? 0.3 : 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.inputDecorationTheme.fillColor,
          border: themedBorder == null
              ? Border.all()
              : Border.fromBorderSide(themedBorder.borderSide),
          borderRadius: borderRadius,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: borderRadius,
            onTap: onSelected == null
                ? null
                : () => onPressed(
                    context,
                    valueBuilderSafe,
                  ),
            child: Padding(
              padding: const EdgeInsets.all(8),
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
        ),
      ),
    );
  }

  Future<void> onPressed(
    BuildContext context,
    Widget Function(T value) valueBuilderSafe,
  ) async {
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
          searchSettings: searchSettings,
          initialQuery: initialQuery,
          onQueryChanged: onQueryChanged,
          layout: searchScreenLayout,
          autofocus: autofocus,
        ),
      ),
    );

    await (openSearchScreen ??
        (searchSettings == null ? Push.menu : _fullscreenModalBottomSheet))(
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
      SearchSettings<T>? searchSettings,
      WoFormQuery? initialQuery,
      void Function(WoFormQuery query)? onQueryChanged,
      LayoutMethod layout,
      bool autofocus,
      Key? key,
    });

class SearchScreen<T> extends StatelessWidget {
  const SearchScreen({
    required this.values,
    required this.tileBuilder,
    required this.onSelect,
    this.bottomChildren,
    this.searchSettings,
    this.onQueryChanged,
    this.initialQuery,
    this.layout = LayoutMethod.scrollable,
    this.onNotFound,
    this.autofocus = true,
    super.key,
  });

  final Iterable<T> values;
  final Widget Function(BuildContext context, T value) tileBuilder;
  final void Function(T value) onSelect;
  final List<Widget>? bottomChildren;
  final SearchSettings<T>? searchSettings;
  final void Function(WoFormQuery query)? onQueryChanged;
  final WoFormQuery? initialQuery;
  final LayoutMethod layout;
  final Widget? onNotFound;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    if (searchSettings != null) {
      return SearchBuilder(
        data: values,
        loadData: searchSettings!.loadAvailibleData,
        debounceDuration: searchSettings!.debounceDuration,
        searchScore: searchSettings!.searchScore,
        initialQuery: initialQuery,
        onQueryChanged: onQueryChanged,
        builder: (context, results, textController) => ShrinkableScaffold(
          shrinkWrap: layout.shrinks,
          appBarHeight: 56 + 32,
          appBarTitle: TextField(
            controller: textController,
            autofocus: autofocus,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
            ),
            // Flutter's default behaviour :
            // - web : tapping outside instantly unfocuses the field.
            // - mobile : tapping outside does nothing.
            // wo_form decided to unfocus search fields on tap down.
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
          ),
          body: body(context, results),
        ),
      );
    } else {
      return body(context, DataValue('', values));
    }
  }

  Widget body(BuildContext context, FutureData<Iterable<T>> data) => ListView(
    padding: EdgeInsets.zero,
    controller: ScrollControllerProvider.of(context),
    shrinkWrap: layout.shrinks,
    children: switch (data) {
      DataError() => [
        ?onNotFound,
        ...?bottomChildren,
      ],
      DataLoading(data: final results) || DataValue(data: final results) => [
        if (data is DataLoading)
          const LinearProgressIndicator()
        else if (searchSettings != null)
          SizedBox(
            height:
                Theme.of(context).progressIndicatorTheme.linearMinHeight ?? 4,
          ),
        if (results == null || results.isEmpty)
          ?onNotFound
        else
          ...results.map(
            (e) => InkWell(
              onTap: () => onSelect(e),
              child: tileBuilder(context, e),
            ),
          ),
        ...?bottomChildren,
      ],
    },
  );
}
