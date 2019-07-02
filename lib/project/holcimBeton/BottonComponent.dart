import 'package:component_set1/component/DecorationComponent.dart';
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:component_set1/project/holcimBeton/FontUtil.dart';
import 'package:flutter/material.dart';

class BottonComponen {
  static GestureDetector mainBotton(
      {@required String text, @required VoidCallback onTap}) {
    /// design botton utama
    /// bentuk bottonnya transparan dengan border berwarna hijau neon (memiliki shadow)
    return GestureDetector(
      onTap: () {},
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
          child: GestureDetector(
            onTap: () {
              onTap();
            },
            child: Text(
              "text",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: FontUtil().primary,
                  fontSize: FontUtil().l),
            ),
          ),
        ),
      ),
    );
  }
}
