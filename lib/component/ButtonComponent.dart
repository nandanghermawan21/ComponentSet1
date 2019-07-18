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
      String fontFamily = "",
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
      {String text = "", //
      Color colorBackground = Colors.blueAccent,
      double radius = 5,
      double fontSize = 14,
      String fontFamily,
      Color textColor = Colors.white,
      double height = 50,
      double width = double.infinity,
      Border border,
      TextStyle textstyle,
      Widget child,
      VoidCallback onPressed,
      List<BoxShadow> boxShadow}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: new BoxDecoration(
          border: border,
          color: colorBackground,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          boxShadow: boxShadow,
        ),
        child: Center(
          child: child != null
              ? child
              : Text(
                  text,
                  style: textstyle ??
                      TextStyle(
                          color: textColor,
                          fontSize: fontSize,
                          fontFamily: fontFamily),
                ),
        ),
      ),
    );
  }
}
