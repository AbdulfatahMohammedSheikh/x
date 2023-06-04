import 'package:flutter/material.dart';

import '../../core/app_style.dart';

class ImageCleaner extends StatefulWidget {
  const ImageCleaner({super.key});

  @override
  State<ImageCleaner> createState() => _ImageCleanerState();
}

class _ImageCleanerState extends State<ImageCleaner> {
  bool? _isSwitched;
// TODO: make this widget cleaner
  @override
  void initState() {
    _isSwitched = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .80,
//      height: MediaQuery.of(context).size.height * .78,
      child: Row(children: [
        Container(
          width: MediaQuery.of(context).size.width * .30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "VIRTUAL TRY-ON",
                  style: TextStyle(
                      height: 1.6,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      color: AppStyle().black),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.all(16),
                alignment: Alignment.topLeft,
                child: Text(
                  "NEVER BUY THE WRONG \nSHADE AGAIN!",
                  style: TextStyle(
                      height: 1.2,
                      fontWeight: FontWeight.normal,
                      fontSize: 32,
                      color: AppStyle().black),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Try Now!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: AppStyle().black),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 20),
                alignment: Alignment.topLeft,
                child: Image.asset("assets/shade.png", width: 200),
              ),
            ],
          ),
        ),

        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //TODO: work on the image part
              Container(
                width: MediaQuery.of(context).size.width * .50,
                child: AnimatedCrossFade(
                    firstChild: Image.asset("assets/before.png"),
                    secondChild: Image.asset("assets/after.png"),
                    crossFadeState: (_isSwitched! == false)
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(seconds: 1)),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "Before",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: AppStyle().black),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                          activeTrackColor: AppStyle().pink,
                          inactiveTrackColor: Colors.blueAccent,
                          value: _isSwitched!,
                          onChanged: (bool switchState) {
                            setState(() {
                              _isSwitched = switchState;
                            });
                          }),
                    ),
                  ),
                  Container(
                    child: Text(
                      "After",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: AppStyle().black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

        // the image part
      ]),
    );
  }
}
