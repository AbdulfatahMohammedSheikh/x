import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .15,
      child: Row(children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset("assets/logo.png", width: 12),
        ),
        const SizedBox(width: 10),
        const Text(
          "amazon",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ]),
    );
  }
}
