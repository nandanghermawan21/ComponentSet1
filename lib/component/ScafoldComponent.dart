import 'package:component_icons/font_awesome.dart';
import 'package:component_set1/util/FontUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScafoldComponent {
  static AppBar appBarDark(
    BuildContext context, {
    String title = "",
    bool backTo = true,
    Color backGroundColor = const Color(0xFF565657),
    Color titleColor = const Color(0xFFA8C700),
    List<Widget> listAction,
    String fontFamily,
    Color iconColor = const Color(0xFFA8C700),
  }) {
    return AppBar(
      centerTitle: true,
      brightness: Brightness.dark,
      backgroundColor: backGroundColor,
      title: Text(
        title,
        style: TextStyle(
            color: titleColor,
            fontWeight: FontWeight.bold,
            fontFamily: fontFamily ?? FontUtil().primary,
            fontSize: 17),
      ),
      elevation: 0,
      leading: backTo
          ? IconButton(
              icon: Icon(
                FontAwesomeLight(FontAwesomeId.fa_arrow_left),
                color: iconColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : Text(""),
      actions: listAction,
    );
  }
}
