import 'package:flutter/material.dart';

class WoReorderableByGrabListView extends StatefulWidget {
  const WoReorderableByGrabListView({
    required this.children,
    required this.onReorder,
    super.key,
  });

  final List<Widget> children;
  final void Function(int oldIndex, int newIndex) onReorder;

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
    final oddItemColor = colorScheme.primary.withOpacity(0.05);
    final evenItemColor = colorScheme.primary.withOpacity(0.2);

    // TODO : remove error warning of provider not found for dragged children

    return ReorderableListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      onReorder: (oldIndex, newIndex) {
        if (oldIndex < newIndex) newIndex -= 1;

        setState(() {
          final item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
        widget.onReorder(oldIndex, newIndex);
      },
      buildDefaultDragHandles: false,
      children: _items.indexed
          .map(
            (e) => ColoredBox(
              key: e.$2.key ?? ValueKey(e.$2),
              color: e.$1.isOdd ? oddItemColor : evenItemColor,
              child: Row(
                children: [
                  SizedBox.square(
                    dimension: 42,
                    child: ReorderableDragStartListener(
                      index: e.$1,
                      child: const Center(
                        child: Icon(Icons.drag_indicator),
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
