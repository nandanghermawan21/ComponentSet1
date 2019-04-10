import 'package:flutter/material.dart';

class ProgressComponent {
  static Padding thinCircularProgressIndicator(
      {bool status = true, Color lineColor = Colors.blue}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 100),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: status == true
            ? CircularProgressIndicator(
                strokeWidth: 1,
                valueColor: new AlwaysStoppedAnimation<Color>(lineColor),
              )
            : Container(),
      ),
    );
  }

  static Center centerThinCircularProgressIndicator(
      {bool status = true, Color lineColor = Colors.blue}) {
    return Center(
      child: status == true
          ? CircularProgressIndicator(
              strokeWidth: 1,
              valueColor: new AlwaysStoppedAnimation<Color>(lineColor),
            )
          : Container(),
    );
  }
}
