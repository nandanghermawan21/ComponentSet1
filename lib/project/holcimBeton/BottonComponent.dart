import 'package:component_icons/font_awesome.dart';
import 'package:component_set1/component/DecorationComponent.dart';
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:component_set1/project/holcimBeton/FontUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

import 'TextStyleUtil.dart';

//update
class BottonComponent {
  static GestureDetector mainBotton({
    @required String text,
    @required VoidCallback onTap,
    double fontSize,
    FontWeight fontWeight,
    Color textColor,
    TextStyle textStyle,
    Color borderColor,
  }) {
    /// design botton utama
    /// bentuk bottonnya transparan dengan border berwarna hijau neon (memiliki shadow)
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 50,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              CustomBoxShadow(
                  color: borderColor ?? ColorUtil().greenColor,
                  blurRadius: 6.0,
                  blurStyle: BlurStyle.outer),
            ],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(
                width: 3, color: borderColor ?? ColorUtil().greenColor)),
        child: Center(
          child: Text(
            "$text",
            style: textStyle ??
                TextStyle(
                    fontWeight: fontWeight ?? FontWeight.bold,
                    color: textColor ?? Colors.white,
                    fontFamily: FontUtil().primary,
                    fontSize: fontSize ?? FontUtil().l),
          ),
        ),
      ),
    );
  }

  /// custom app bar dengan komposisi
  /// dibagian kiri ada tombol back dengan icon arrow dengan action tap [onBack]
  /// disebelahnya tombol tersebut ada [actionText] yang dapat di ganti
  /// ditengahnya ada text [title] halaman dan
  /// dikanannya ada [rightWidget]
  /// masukan elevation 0 untuk appbar transparant
  static AppBar customAppBar1(
      {@required BuildContext context,
      @required String actionText,
      bool backButton = true,
      String title = "",
      Widget rightWidget,
      VoidCallback onBack,
      double elevetion = 1,
      Color backgroundColor,
      Color titleColor,
      TextStyle titleStyle,
      Color backButtonColor,
      Color actionTextColor,
      TextStyle actionTextStyle}) {
    return AppBar(
      centerTitle: false,
      flexibleSpace: Container(
        child: Center(
          child: Stack(
            children: <Widget>[
              Center(
                child: Text(
                  "$title",
                  style: titleStyle ??
                      TextStyle(
                          color: titleColor ?? ColorUtil().mainColor,
                          fontFamily: FontUtil().primary,
                          fontSize: FontUtil().lPlus,
                          fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  backButton
                      ? GestureDetector(
                          onTap: () {
                            onBack ?? Navigator.of(context).pop();
                          },
                          child: Container(
                            width: 40,
                            color: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(0),
                            child: Container(
                              child: Center(
                                child: Icon(
                                  FontAwesomeRegular(FontAwesomeId.fa_arrow_left),
                                  size: FontUtil().lPlus,
                                  color: backButtonColor ?? ColorUtil().mainColor,
                                ),
                              ),
                            ),
                          ))
                      : Container(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        backButton
                            ? GestureDetector(
                                onTap: () {
                                  onBack ?? Navigator.of(context).pop();
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  height: double.infinity,
                                  child: Center(
                                      child: Text(
                                    "$actionText",
                                    style: actionTextStyle ??
                                        TextStyleUtil.linkLabel(
                                            fontSize: FontUtil().lPlus,
                                            color: actionTextColor),
                                  )),
                                ))
                            : Container(),
                        Container(
                          child: rightWidget ?? Container(),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: elevetion,
    );
  }
}
