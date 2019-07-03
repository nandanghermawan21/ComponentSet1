import 'package:component_icons/font_awesome.dart';
import 'package:component_set1/component/DecorationComponent.dart';
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:component_set1/project/holcimBeton/FontUtil.dart';
import 'package:flutter/material.dart';

import 'TextStyleUtil.dart';

class BottonComponent {
  static GestureDetector mainBotton(
      {@required String text, @required VoidCallback onTap}) {
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
                  color: ColorUtil().greenColor,
                  blurRadius: 6.0,
                  blurStyle: BlurStyle.outer),
            ],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(width: 3, color: ColorUtil().greenColor)),
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: FontUtil().primary,
                fontSize: FontUtil().l),
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
  static AppBar customAppBar1({
    @required BuildContext context,
    @required String actionText,
    String title,
    Widget rightWidget,
    VoidCallback onBack,
  }) {
    return AppBar(
      centerTitle: false,
      title: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 40,
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                child: GestureDetector(
                  onTap: () {
                    onBack ?? Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Icon(
                      FontAwesomeRegular(FontAwesomeId.fa_arrow_left),
                      size: 18,
                      color: ColorUtil().mainColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "$actionText",
                      style: TextStyleUtil.linkLabel(fontSize: 17),
                    ),
                    Container(
                      child: rightWidget ?? Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              "$title",
              style: TextStyle(
                  color: ColorUtil().mainColor,
                  fontFamily: FontUtil().primary,
                  fontSize: FontUtil().xxl,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 1,
    );
  }
}
