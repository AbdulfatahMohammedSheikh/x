import 'package:amazon_flutter/pages/home/home.dart';

import 'package:flutter/material.dart';
import './core/app_style.dart';

void main() {
  // TODO: make this responsive
  // TODO: adding a routing system
  // TODO: add animation to this
  // TODO; implement clean arcticture
  // TODO: use json place holderr for getting users commnets
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // setting the scroller bevavior of app
      title: 'Amazon Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AmazonFlutter(),
    );
  }
}

class AmazonFlutter extends StatelessWidget {
  const AmazonFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      radius: Radius.circular(30),
      thickness: 10,
      thumbVisibility: true,
      trackVisibility: true,
      trackColor: AppStyle().main,
      thumbColor: Colors.blueAccent,
      trackBorderColor: AppStyle().main,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppStyle().main,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(child: Home())),
          ),
        ),
      ),
    );
  }
}
