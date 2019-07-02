import 'package:component_set1/custom/material_custom.dart';
import 'FontUtil.dart';

class TextStyleUtil {
  static TextStyle pageTitle() {
    return TextStyle(
        color: Colors.white,
        fontFamily: FontUtil().primary,
        fontSize: 28,
        fontWeight: FontWeight.bold);
  }
}
