import 'package:component_set1/FontUtil.dart';
import 'package:flutter/material.dart';

class ButtonComponent {
  static ButtonTheme menuButtonItem(
      {double widht = 30,
      double height = 50,
      IconData icon = Icons.home,
      double iconSize = 27.0,
      Color color = Colors.grey,
      bool textSelected = true,
      bool useImage = false,
      Image image,
      String textButton = 'Button',
      Color colorTextButton = Colors.white,
      Color colorIconButton = Colors.black,
      double fontSize = 14.0,
      double radius = 0,
      bool circuler = false,
      String fontFamily = FontUtil.Primary,
      VoidCallback onTap}) {
    return ButtonTheme(
        minWidth: widht,
        height: height,
        shape: circuler
            ? CircleBorder()
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius)),
        child: FlatButton(
          color: color,
          onPressed: () {
            onTap();
          },
          child: textSelected == true
              ? Text(
                  textButton,
                  style: TextStyle(
                      color: colorTextButton,
                      fontFamily: fontFamily,
                      fontSize: fontSize),
                )
              : useImage == false
                  ? Icon(
                      icon,
                      color: colorIconButton,
                      size: iconSize,
                    )
                  : image,
        ));
  }

  static Widget roundedButton(
      {String text = "",
      Color color = Colors.blueAccent,
      double radius = 5,
      VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: new BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
