import 'package:amazon_flutter/pages/home/product_section.dart';
import "package:flutter/material.dart";

import '../../widgets/bar.dart';
import './intro_section.dart';
import '../home/image_cleaner.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Bar(), IntroSecton(), ImageCleaner(), ProductSection()]);
  }
}
