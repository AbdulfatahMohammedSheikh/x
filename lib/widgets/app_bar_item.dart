import 'package:flutter/material.dart';

class AppBarItem extends StatefulWidget {
  final String tilte;
  final Color activeColor;
  final Color hoverColor;
  final double fonsSize;
  const AppBarItem(
      {super.key,
      required this.tilte,
      required this.activeColor,
      required this.hoverColor,
      this.fonsSize = 18});

  @override
  State<StatefulWidget> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  Color? currentColor;
  @override
  void initState() {
    currentColor = widget.activeColor;
    super.initState();
  }

  void _onHover(PointerEvent details) {
    setState(() {
      currentColor = widget.hoverColor;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      currentColor = widget.activeColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: _onExit,
      onHover: _onHover,
      child: TextButton(
          onPressed: () {},
          child: Text(
            widget.tilte,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: widget.fonsSize,
                color: currentColor),
          )),
    );
  }
}
