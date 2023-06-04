import 'package:flutter/material.dart';
import '../core/app_style.dart';
import './app_logo.dart';
import './app_bar_item.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const AppLogo(),
          SizedBox(width: MediaQuery.of(context).size.width * 0.60),
          const AppBarItems()
        ],
      ),
    );
  }
}

class AppBarItems extends StatelessWidget {
  const AppBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        AppBarItem(
            tilte: "Collections",
            activeColor: AppStyle().black,
            hoverColor: AppStyle().pink),
        AppBarItem(
            tilte: "News",
            activeColor: AppStyle().black,
            hoverColor: AppStyle().pink),
        AppBarItem(
            tilte: "Barnds",
            activeColor: AppStyle().black,
            hoverColor: AppStyle().pink),
        AppBarItem(
            tilte: "Sales",
            activeColor: AppStyle().black,
            hoverColor: AppStyle().pink),
      ]),
    );
  }
}
