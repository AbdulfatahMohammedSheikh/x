import 'package:flutter/material.dart';
import './core/app_style.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellowAccent,
      child: const Center(child: Text("hi there")),
    );
  }
}
