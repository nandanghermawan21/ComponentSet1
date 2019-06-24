import 'package:component_set1/component/ButtonComponent.dart';
import 'package:component_set1/util/ColorUtil.dart';
import 'package:component_set1/util/FontUtil.dart';
import 'package:groovin_widgets/groovin_widgets.dart';
import 'package:component_set1/custom/material_custom.dart';

class ModalComponent {
  static void bottomModalWithCorner(BuildContext context,
      {double height,
      Color backgroundColor,
      double corner,
      Widget child,
      Color handleColor}) {
    showModalBottomSheet(
      context: context,
      theme: ThemeData(canvasColor: Colors.transparent),
      builder: (builder) {
        return Material(
          child: Container(
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
          ),
        );
      },
    );
  }

  static void showAlert(
    BuildContext context, {
    String title = '',
    String description = '',
    Color color = Colors.orange,
    double radius = 5.0,
    bool isConfirm = true,
    VoidCallback onConfirm,
    bool dismisable = true,
    String confirmText = "Yes",
    bool cancleButton = false,
    String cancleText = "No",
    IconData iconData = Icons.check_circle,
    String fontFamily,
    double titleFontSize,
    double fontSize,
    TextStyle titleStyle,
    TextStyle descriptionStyle,
    TextAlign titileAlign,
    TextAlign descriptionAlign,
    Color backgroundColor,
    Color cancleButtonColor,
    Color confirmButtonColor,
    Widget customAction,
  }) {
    showDialog(
        context: context,
        barrierDismissible: dismisable,
        builder: (context) => isConfirm
            ? AlertDialog(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius)),
                content: SingleChildScrollView(
                  child: Container(
                    width: 343,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        title.isNotEmpty
                            ? Text(
                                title,
                                textAlign: titileAlign,
                                style: titleStyle ??
                                    TextStyle(
                                        color: Colors.black,
                                        fontFamily: fontFamily,
                                        fontSize: titleFontSize,
                                        fontWeight: FontWeight.bold),
                              )
                            : Container(),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text(
                          description,
                          textAlign: descriptionAlign,
                          style: descriptionStyle ??
                              TextStyle(
                                  fontFamily: fontFamily,
                                  fontSize: titleFontSize),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: customAction ?? <Widget>[
                  cancleButton == true
                      ? ButtonTheme(
                          buttonColor: cancleButtonColor,
                          minWidth: 100,
                          height: 48,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            child: Text(cancleText,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: fontFamily,
                                    fontSize: fontSize)),
                          ),
                        )
                      : Container(),
                  ButtonTheme(
                    buttonColor: confirmButtonColor,
                    minWidth: 100,
                    height: 48,
                    child: RaisedButton(
                      onPressed: onConfirm,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                      child: Text(confirmText,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: fontSize)),
                    ),
                  ),
                ],
              )
            : AlertDialog(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius)),
                content: SingleChildScrollView(
                  child: Center(
                    child: Container(
                      width: 343,
                      child: Column(
                        children: <Widget>[
                          Icon(
                            iconData,
                            color: color,
                            size: 50,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 10),
                          ),
                          title.isNotEmpty
                              ? Text(title,
                                  textAlign: titileAlign,
                                  style: titleStyle ??
                                      TextStyle(
                                          color: Colors.black,
                                          fontFamily: fontFamily,
                                          fontSize: titleFontSize,
                                          fontWeight: FontWeight.bold))
                              : Container(),
                          Text(
                            description,
                            textAlign: descriptionAlign,
                            style: descriptionStyle ??
                                TextStyle(
                                    fontFamily: fontFamily,
                                    fontSize: titleFontSize),
                          ),
                        ],
                      ),
                    ),
                  ),
                )));
  }
}

class HolcimBetonModal {
  static modalBottomComfirmation(
    BuildContext context, {
    VoidCallback onConfirm,
    String titleText,
    String descriptionText,
    String confirmText,
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
                      child: Text(titleText ?? "Confirmation",
                          style: titleTextStyle ??
                              TextStyle(
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
                        descriptionText ??
                            "Are you sure to confirm this action?",
                        style: descriptionTextStyle ??
                            TextStyle(
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
                      textstyle: confirmTextStyle ??
                          TextStyle(
                              color: Colors.white,
                              fontFamily: FontUtil().primary,
                              fontSize: FontUtil().l,
                              fontWeight: FontWeight.bold),
                      colorBackground:
                          bottonCollor ?? HolcimBetonColor().mainColor),
                ),
              )
            ],
          ),
        ));
  }
}
