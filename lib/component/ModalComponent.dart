import 'package:component_set1/component/ButtonComponent.dart';
import 'package:component_set1/util/ColorUtil.dart';
import 'package:component_set1/util/FontUtil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groovin_widgets/groovin_widgets.dart';

class ModalComponent {
  static void bottomModalWithCorner(BuildContext context,
      {double height,
      Color backgroundColor,
      double corner,
      Widget child,
      Color handleColor}) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: height ?? 250.0,
          decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(corner ?? 15),
                  topRight: Radius.circular(corner ?? 15))),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ModalDrawerHandle(
                  handleColor: handleColor ?? Colors.indigoAccent,
                ),
              ),
              child ?? Container()
            ],
          ),
        );
      },
    );
  }
}

class HolcimBetonModal {
  static modalBottomComfirmation(
    BuildContext context, {
    VoidCallback onConfirm,
    Text titleText,
    Text descriptionText,
    Text confirmText,
    TextStyle titleTextStyle,
    TextStyle descriptionTextStyle,
    TextStyle confirmTextStyle,
    Color bottonCollor,
  }) {
    ModalComponent.bottomModalWithCorner(context,
        backgroundColor: Colors.white,
        handleColor: HolcimBetonColor().borderInputGray,
        child: Container(
          height: 220,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(titleText?? "Confirmation",
                          style: titleTextStyle ?? TextStyle(
                            fontFamily: FontUtil().primary,
                            fontSize: FontUtil().xxl,
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 20, right: 15),
                      child: Text(
                        descriptionText ?? "Are you sure to confirm this action?",
                        style: descriptionTextStyle ?? TextStyle(
                          fontFamily: FontUtil().primary,
                          fontSize: FontUtil().m,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonComponent.roundedButton(
                    width: 200,
                    text: confirmText ?? "Confirmation",
                    textstyle: confirmTextStyle ?? TextStyle(
                      color: Colors.white,
                      fontFamily: FontUtil().primary,
                      fontSize: FontUtil().l,
                      fontWeight: FontWeight.bold
                    ),
                    colorBackground: bottonCollor ?? HolcimBetonColor().mainColor
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
