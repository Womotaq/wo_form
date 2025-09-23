part of 'wo_form.dart';

class WoFormNodeFocusManager extends StatefulWidget {
  WoFormNodeFocusManager({
    required this.path,
    required this.child,
  }) : super(key: Key('WoFormNodeFocusManager-$path'));

  final String path;
  final Widget child;

  @override
  State<WoFormNodeFocusManager> createState() => _WoFormNodeFocusManagerState();
}

class _WoFormNodeFocusManagerState extends State<WoFormNodeFocusManager> {
  late FocusNode focusNode;

  // We need to store a reference to valuesCubit, because in dispose(),
  // the context is not available anymore.
  late WoFormValuesCubit valuesCubit;

  @override
  void initState() {
    super.initState();

    valuesCubit = context.read<WoFormValuesCubit>();
    focusNode = valuesCubit._createFocusNode(widget.path);
  }

  @override
  void dispose() {
    valuesCubit._disposeFocusNode(widget.path);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // FocusTraversalGroup allows WoFormValuesCubit to focus the Focus widget
    // and then switch to the next focusable widget availible.
    return FocusTraversalGroup(
      child: Focus(
        focusNode: focusNode,
        skipTraversal: true,
        onFocusChange: (value) =>
            valuesCubit._onFocusChange(widget.path, isFocused: value),
        child: widget.child,
      ),
    );
  }
}
