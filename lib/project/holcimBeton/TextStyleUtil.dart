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

  static TextStyle inputTitle({double fontSize}) {
    return TextStyle(
        color: Colors.white,
        fontFamily: FontUtil().primary,
        fontSize: fontSize ?? FontUtil().l,
        fontWeight: FontWeight.normal);
  }

  static TextStyle mainLabel({double fontSize}) {
    return TextStyle(color: Colors.white, fontSize: fontSize ?? FontUtil().l);
  }

  static TextStyle linkLabel({
    double fontSize,
  }) {
    return TextStyle(
        color: ColorUtil().mainColor, fontSize: fontSize ?? FontUtil().l);
  }

  static TextStyle titleTable({
    double fontSize,
  }) {
    return TextStyle(
        color: Colors.white,
        fontSize: fontSize ?? FontUtil().m,
        fontWeight: FontWeight.w600);
  }

  static TextStyle headerTable({
    double fontSize,
  }) {
    return TextStyle(
      color: ColorUtil().mainColor,
      fontSize: fontSize ?? FontUtil().s,
    );
  }

  static TextStyle valueTable({
    double fontSize,
  }) {
    return TextStyle(
      color: Colors.white,
      fontSize: fontSize ?? FontUtil().m,
    );
  }

  static TextStyle listTileTitle() {
    return TextStyle(
        fontWeight: FontWeight.bold,
        color: ColorUtil().mainColor,
        fontSize: FontUtil().m);
  }

  static TextStyle listTileSUbtitile() {
    return TextStyle(fontSize: FontUtil().l, color: Colors.white);
  }
}
