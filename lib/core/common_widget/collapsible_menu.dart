import 'package:flutter/material.dart';

class CollapsibleMenu extends StatefulWidget {
  final bool isExpanded;
  final Widget expandedWidget;

  const CollapsibleMenu({
    Key? key,
    required this.isExpanded,
    required this.expandedWidget,
  }) : super(key: key);

  @override
  State<CollapsibleMenu> createState() => _CollapsibleMenuState();
}

class _CollapsibleMenuState extends State<CollapsibleMenu> {
  double height = 50;
  double width = 30;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
        height: widget.isExpanded ? size.height : 0,
        width: widget.isExpanded ? size.height * 0.4 : 0,
        duration: const Duration(milliseconds: 500),
        child: widget.expandedWidget);
  }
}
