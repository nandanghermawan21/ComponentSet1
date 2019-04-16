import 'package:component_set1/util/SizeUtil.dart';
import 'package:flutter/material.dart';

class SplashScreen {
  static Padding splashScreenNavigation(
      {int count = 1,
      int active = 1,
      VoidCallback onNext,
      VoidCallback onSkip,
      String nextTitle = "",
      String skipTitle = ""}) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 100,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: splashScreenIcon(count, active),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        onPressed: onSkip,
                        child: Text(skipTitle.isEmpty ? "Skip" : skipTitle,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "SF Pro Text",
                                fontSize: 14)),
                      ),
                      FlatButton(
                        onPressed: onNext,
                        child: Text(nextTitle.isEmpty ? "Next" : nextTitle,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "SF Pro Text",
                                fontSize: 14)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static Padding splashScreenTitle(BuildContext context,
      {String titleText = "", String descriptionText = ""}) {
    return Padding(
      padding: EdgeInsets.only(top: SizeUtil.h3(context), left: 30),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              titleText,
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: "SF Pro Text",
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                descriptionText,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "SF Pro Text",
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static List<Widget> splashScreenIcon(int count, int active) {
    List<Widget> list = new List<Widget>();

    for (var i = 1; i <= count; i++) {
      list.add(Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Image.asset(
          active == i
              ? "assets/splash_screen_icon_active.png"
              : "assets/splash_screen_icon.png",
        ),
      ));
    }

    return list;
  }
}
