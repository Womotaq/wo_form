import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoReorderableByGrabListView extends StatefulWidget {
  const WoReorderableByGrabListView({
    required this.children,
    required this.onReorder,
    super.key,
  });

  final List<Widget> children;
  final void Function(int oldIndex, int newIndex)? onReorder;

  @override
  State<WoReorderableByGrabListView> createState() =>
      _WoReorderableByGrabListViewState();
}

class _WoReorderableByGrabListViewState
    extends State<WoReorderableByGrabListView> {
  List<Widget> _items = [];

  @override
  void initState() {
    super.initState();
    _items = widget.children;
  }

  @override
  void didUpdateWidget(covariant WoReorderableByGrabListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() => _items = widget.children);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final oddItemColor = colorScheme.primary.withValues(alpha: 0.05);
    final evenItemColor = colorScheme.primary.withValues(alpha: 0.2);

    final rootNode = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();
    final statusCubit = context.read<WoFormStatusCubit>();
    final lockCubit = context.read<WoFormLockCubit>();

    return ReorderableListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // Because the dragged widget is not in the page's context,
      // we need to provide the following
      proxyDecorator: (child, index, animation) => Material(
        child: RepositoryProvider.value(
          value: rootNode,
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: valuesCubit),
              BlocProvider.value(value: statusCubit),
              BlocProvider.value(value: lockCubit),
            ],
            child: child,
          ),
        ),
      ),
      onReorder: (oldIndex, newIndex) {
        if (widget.onReorder == null) return;

        if (oldIndex < newIndex) newIndex -= 1;

        setState(() {
          final item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
        widget.onReorder!(oldIndex, newIndex);
      },
      buildDefaultDragHandles: false,
      children: _items.indexed
          .map(
            (e) => AnimatedContainer(
              key: e.$2.key ?? ValueKey(e.$2),
              duration: WoFormTheme.ANIMATION_DURATION,
              color: e.$1.isOdd ? oddItemColor : evenItemColor,
              child: Row(
                children: [
                  ReorderableDragStartListener(
                    enabled: widget.onReorder != null,
                    index: e.$1,
                    child: SizedBox.square(
                      dimension: 42,
                      child: Center(
                        child: Icon(
                          Icons.drag_indicator,
                          color: widget.onReorder == null
                              ? Theme.of(context).disabledColor
                              : null,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: e.$2),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
