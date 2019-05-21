import 'package:component_set1/util/FontUtil.dart';
import 'package:component_set1/util/SizeUtil.dart';
import 'package:flutter/material.dart';

class DashboardComponent {
  static Widget quickInfoItem({
    String image = "assets/icon_vehicle.png",
    String title = "Total",
    String value = "70",
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(image),
        ),
        Text(
          value,
          style: TextStyle(
              fontFamily: FontUtil().scondary,
              fontSize: 14,
              color: Colors.white),
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: FontUtil().scondary,
              fontSize: 12,
              color: Colors.white),
        ),
      ],
    );
  }

  static SizedBox flatInfoBOx(
      {BuildContext context,
      String title = "Sample",
      String value = "2 Samples",
      Color lineColor = Colors.red,
      double width = 0,
      double height = 0,
      VoidCallback omTap}) {
    return SizedBox(
      child: GestureDetector(
        onTap: omTap,
        child: Card(
          elevation: 4,
          child: Container(
            height: height == 0 ? 123 : height,
            width: width == 0 ? SizeUtil.w2(context, margin: 20) : width,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: FontUtil().primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(value,
                      style: TextStyle(
                          fontFamily: FontUtil().primary, fontSize: 16)),
                ),
                Container(
                  margin: EdgeInsets.all(4.0),
                  height: 2,
                  width: 60,
                  color: lineColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
