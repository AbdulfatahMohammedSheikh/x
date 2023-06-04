import 'package:flutter/material.dart';

import '../../core/app_style.dart';

class IntroSecton extends StatelessWidget {
  const IntroSecton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .01),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .90,
      child: Stack(children: [
        Positioned(
            left: MediaQuery.of(context).size.width * .30,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                shape: BoxShape.circle,
              ),
              width: 650,
              height: 650,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * .02,
            left: MediaQuery.of(context).size.width * .30,
            child: Center(child: Image.asset('assets/hero.png'))),
        Positioned(
            top: MediaQuery.of(context).size.height * .42,
            left: MediaQuery.of(context).size.width * .60,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width * .12,
              height: MediaQuery.of(context).size.height * .08,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Signup \nOffer",
                      style: TextStyle(
                          height: 1.6,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AppStyle().black),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                        
                          Icons.arrow_right,
                          size: 40,
                          color: AppStyle().pink,
                        ))
                  ],
                ),
              ),
            )),
        Positioned(
          top: MediaQuery.of(context).size.height * .04,
          child: Text(
            "SKIN\nPRODUCTION\nCREAM",
            style: TextStyle(
                height: 1.6,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: AppStyle().black),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .04,
          right: MediaQuery.of(context).size.width * .04,
          child: Column(
            children: [
              Text(
                //TODO: animate the number
                "1.6m",
                style: TextStyle(
                    height: 1.6,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: AppStyle().black),
              ),
              Text(
                "Monthly traffic",
                style: TextStyle(
                    wordSpacing: 6.8,
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    color: AppStyle().black),
              ),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .43,
          child: Container(
            //TODO: animate the number
            child: Text(
              "Trendy\nCollections",
              style: TextStyle(
                  height: 1.6,
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                  color: AppStyle().black),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .60,
          child: Container(
            child: Text(
              //TODO: animate the number
              "Seedily say has suitable \ndisposal and boy. \nExercise joy man children \nrejoiced.",
              style: TextStyle(
                  height: 1.3,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: AppStyle().black),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .46,
          right: MediaQuery.of(context).size.width * .04,
          child: Column(
            children: [
              Text(
                //TODO: animate the number
                "100K",
                style: TextStyle(
                    height: 1.6,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: AppStyle().black),
              ),
              Text(
                "happy customers",
                style: TextStyle(
                    wordSpacing: 6.8,
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    color: AppStyle().black),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
