import 'package:component_set1/custom/material_custom.dart';
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'FontUtil.dart';

class TextStyleUtil {
  static TextStyle pageTitle() {
    return TextStyle(
        color: Colors.white,
        fontFamily: FontUtil().primary,
        fontSize: FontUtil().xxxl,
        fontWeight: FontWeight.bold);
  }

  static TextStyle inputTitle({
    double fontSize
  }) {
    return TextStyle(
        color: Colors.white,
        fontFamily: FontUtil().primary,
        fontSize: fontSize ?? FontUtil().l,
        fontWeight: FontWeight.normal);
  }

  static TextStyle mainLabel({
    double fontSize
  }) {
    return TextStyle(color: Colors.white, fontSize: fontSize ?? FontUtil().l);
  }

  static TextStyle linkLabel({
    double fontSize,
  }) {
    return TextStyle(
        color: ColorUtil().mainColor, fontSize: fontSize ?? FontUtil().l);
  }
}
