import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class ShrinkableScaffold extends StatefulWidget {
  const ShrinkableScaffold({
    required this.body,
    required this.shrinkWrap,
    this.appBarLeading,
    this.appBarTitle,
    this.appBarActions = const [],
    this.appBarHeight,
    this.bottomNavigationBar,
    this.floatingActionButton,
    super.key,
  });

  final Widget body;
  final bool shrinkWrap;
  final Widget? appBarLeading;
  final Widget? appBarTitle;
  final List<Widget> appBarActions;
  final double? appBarHeight;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;

  @override
  State<ShrinkableScaffold> createState() => _ShrinkableScaffoldState();
}

class _ShrinkableScaffoldState extends State<ShrinkableScaffold> {
  ScrollController? scrollController;
  double elevation = 0;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollControllerProvider.of(context);
    scrollController?.addListener(_handleScroll);
  }

  void _handleScroll() {
    if (scrollController == null) return;

    final newElevation = scrollController!.offset > 0
        ? Theme.of(context).appBarTheme.scrolledUnderElevation ?? 4
        : 0.0;
    if (newElevation != elevation) setState(() => elevation = newElevation);
  }

  @override
  void dispose() {
    scrollController?.removeListener(_handleScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisSize: widget.shrinkWrap ? MainAxisSize.min : MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: widget.shrinkWrap ? 0 : 1,
          child: Stack(
            children: [
              Column(
                children: [
                  if (widget.appBarLeading != null ||
                      widget.appBarTitle != null ||
                      widget.appBarActions.isNotEmpty)
                    AppBar(
                      leading: widget.appBarLeading,
                      automaticallyImplyLeading: false,
                      title: widget.appBarTitle,
                      actions: widget.appBarActions,
                      elevation: elevation,
                      toolbarHeight: widget.appBarHeight,
                    ),
                  Expanded(
                    flex: widget.shrinkWrap ? 0 : 1,
                    child: widget.body,
                  ),
                ],
              ),
              if (widget.floatingActionButton != null)
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: widget.floatingActionButton!,
                ),
            ],
          ),
        ),
        if (widget.bottomNavigationBar != null)
          KeyboardVisibleBuilder(
            builder: (context, isKeyboardVisible) => isKeyboardVisible
                ? const SizedBox.shrink()
                : widget.bottomNavigationBar!,
          ),
      ],
    );

    return widget.shrinkWrap
        ? Material(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: content,
          )
        // This scaffold ensures basic flutter functionnalities like adapting
        // size when the keyboard appears.
        : Scaffold(body: content);
  }
}

class KeyboardVisibleBuilder extends StatefulWidget {
  const KeyboardVisibleBuilder({required this.builder, super.key});

  final Widget Function(BuildContext context, bool isKeyboardVisible) builder;

  @override
  State<KeyboardVisibleBuilder> createState() => _KeyboardVisibleBuilderState();
}

class _KeyboardVisibleBuilderState extends State<KeyboardVisibleBuilder>
    with WidgetsBindingObserver {
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    // Check the keyboard visibility when the metrics change
    final bottomInset = View.of(context).viewInsets.bottom;
    setState(() => _isKeyboardVisible = bottomInset > 0);
  }

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, _isKeyboardVisible);
}
