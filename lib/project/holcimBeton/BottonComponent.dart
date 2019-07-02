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
                color: Colors.white,
                fontFamily: FontUtil().primary,
                fontSize: FontUtil().l),
          ),
        ),
      ),
    );
  }

  static AppBar backButtonAppBar({
    @required BuildContext context,
    @required String text,
    VoidCallback onBack,
  }) {
    return AppBar(
      centerTitle: false,
      title: Text(
        "$text",
        style: TextStyleUtil.linkLabel(fontSize: FontUtil().lPlus),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          onBack != null ? onBack() : Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back,
          color: ColorUtil().mainColor,
        ),
      ),
    );
  }
}
