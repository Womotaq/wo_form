import 'package:flutter/material.dart';

class DeletableField extends StatelessWidget {
  const DeletableField({
    required this.child,
    required this.onDelete,
    super.key,
  });

  final Widget child;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minTileHeight: 0,
      minVerticalPadding: 0,
      horizontalTitleGap: 0,
      leading: IconButton(
        onPressed: onDelete,
        icon: const Icon(Icons.close),
      ),
      title: child,
    );
  }
}
