import 'package:component_set1/custom/material_custom.dart';
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'FontUtil.dart';

class TextStyleUtil {
  static TextStyle pageTitle() {
    return TextStyle(
        color: Colors.white,
        fontFamily: FontUtil().primary,
        fontSize: FontUtil().xl,
        fontWeight: FontWeight.bold);
  }

  static TextStyle inputTitle() {
    return TextStyle(
        color: Colors.white,
        fontFamily: FontUtil().primary,
        fontSize: 16,
        fontWeight: FontWeight.normal);
  }

  static TextStyle mainLabel() {
    return TextStyle(color: Colors.white, fontSize: FontUtil().l);
  }

  static TextStyle linkLabel() {
    return TextStyle(color: ColorUtil().mainColor, fontSize: FontUtil().l);
  }

}
