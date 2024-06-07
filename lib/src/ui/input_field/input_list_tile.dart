import 'package:flutter/material.dart';

class InputListTile extends StatelessWidget {
  const InputListTile({
    required this.leading,
    required this.trailing,
    this.onTap,
    super.key,
  });

  final Widget leading;
  final Widget trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 2, child: leading),
          Flexible(child: trailing),
        ],
      ),
    );
  }
}
