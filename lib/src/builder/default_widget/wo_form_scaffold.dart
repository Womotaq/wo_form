import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormScaffold extends StatelessWidget {
  const WoFormScaffold(this.body, {super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final uiSettings = context.read<RootNode>().uiSettings;

    return _ShrinkableScaffold(
      shrinkWrap: false,
      appBarLeading: uiSettings.presentation == WoFormPresentation.page
          ? const QuitWoFormButton()
          : null,
      appBarTitle: uiSettings.titlePosition == WoFormTitlePosition.appBar
          ? Text(uiSettings.titleText)
          : null,
      appBarActions: [
        if (uiSettings.submitButtonPosition == SubmitButtonPosition.appBar) ...[
          const SubmitButtonBuilder(),
          const SizedBox(width: 8),
        ],
        if (uiSettings.presentation == WoFormPresentation.dialog) ...[
          const QuitWoFormButton(),
          const SizedBox(width: 8),
        ],
      ],
      body: body,
      bottomNavigationBar:
          uiSettings.submitButtonPosition == SubmitButtonPosition.bottomBar
          ? const SubmitButtonBuilder()
          : null,
      floatingActionButton:
          uiSettings.submitButtonPosition == SubmitButtonPosition.floating
          ? const SubmitButtonBuilder()
          : null,
    );
  }
}

class _ShrinkableScaffold extends StatefulWidget {
  const _ShrinkableScaffold({
    required this.body,
    required this.shrinkWrap,
    this.appBarLeading,
    this.appBarTitle,
    this.appBarActions = const [],
    this.bottomNavigationBar,
    this.floatingActionButton,
  });

  final Widget body;
  final bool shrinkWrap;
  final Widget? appBarLeading;
  final Widget? appBarTitle;
  final List<Widget> appBarActions;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;

  @override
  State<_ShrinkableScaffold> createState() => _ShrinkableScaffoldState();
}

class _ShrinkableScaffoldState extends State<_ShrinkableScaffold> {
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
    // return Scaffold(
    //   appBar:
    //       widget.appBarLeading != null ||
    //           widget.appBarTitle != null ||
    //           widget.appBarActions.isNotEmpty
    //       ? AppBar(
    //           leading: widget.appBarLeading,
    //           title: widget.appBarTitle,
    //           actions: widget.appBarActions,
    //           elevation: _elevation,
    //         )
    //       : null,
    //   body: widget.body,
    //   bottomNavigationBar: widget.bottomNavigationBar,
    //   floatingActionButton: widget.floatingActionButton,
    // );

    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    if (widget.appBarLeading != null ||
                        widget.appBarTitle != null ||
                        widget.appBarActions.isNotEmpty)
                      AppBar(
                        leading: widget.appBarLeading,
                        title: widget.appBarTitle,
                        actions: widget.appBarActions,
                        elevation: elevation,
                      ),
                    Expanded(child: widget.body),
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
          ?widget.bottomNavigationBar,
        ],
      ),
    );
  }
}
