import 'package:flutter/material.dart';

/// Custom CollapsibleMenu widget
/// Hold the  widget state and return the widget depanding on state
class CollapsibleMenu extends StatelessWidget {
  final bool isExpanded;
  final Widget expandedWidget;

  const CollapsibleMenu({
    Key? key,
    required this.isExpanded,
    required this.expandedWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
      padding: EdgeInsets.zero,
      height: isExpanded ? size.height : 0,
      width: isExpanded ? size.width * 0.23 : 0,
      duration: const Duration(milliseconds: 400),
      child: isExpanded ? expandedWidget : const SizedBox(),
    );
  }
}
