import 'package:component_icons/font_awesome.dart';
import 'package:component_set1/component/DecorationComponent.dart';
import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:component_set1/project/holcimBeton/FontUtil.dart';

import 'presenter.dart';
import 'package:flutter/material.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    Container menu(
        {double sizeMenuButton = 113,
        Color bgMenu = Colors.black12,
        double radiusMenu = 5,
        IconData iconMenu = const FontAwesomeRegular(FontAwesomeId.fa_bell),
        Color colorIcon = const Color(0xff5555BF),
        double sizeIcon = 20.2,
        Color colorBedge = const Color(0xffFF9500),
        int intBedge = 0,
        Color colorTextBedge = Colors.white,
        String textMenu = 'label',
        Color colorRxtMenu = Colors.white,
        VoidCallback onTap,
        double sizeTextMenu = 12,
        String fontTextFamily}) {
      return Container(
          margin: EdgeInsets.only(left: 2, right: 2, bottom: 2),
          width: sizeMenuButton,
          height: sizeMenuButton,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: GestureDetector(
            onTap: () {
              onTap();
            },
            child: Center(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            CustomBoxShadow(
                                color: ColorUtil().greenColor,
                                blurRadius: 6.0,
                                blurStyle: BlurStyle.outer),
                          ],
                          border: Border.all(
                            color: ColorUtil().mainColor,
                            width: 3,
                          )),
                      child: Center(
                        child: Icon(
                          iconMenu,
                          color: Colors.white,
                          size: sizeIcon,
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: intBedge == 0 || intBedge == null
                          ? Container()
                          : Container(
                              margin: EdgeInsets.only(right: 10, top: 6),
                              width: sizeMenuButton / 4,
                              height: sizeMenuButton / 4,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.blueGrey)),
                              child: Center(
                                  child: Text("$intBedge",
                                      style: TextStyle(color: Colors.red))),
                            )),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 60),
                        padding: EdgeInsets.only(
                          bottom: 0,
                        ),
                        child: Text(
                          textMenu,
                          style: TextStyle(
                              color: colorRxtMenu,
                              fontSize: sizeTextMenu,
                              fontFamily: fontTextFamily ?? FontUtil().primary),
                        ),
                      ))
                ],
              ),
            ),
          ));
    }

    Container mainMenu() {
      return Container(
        color: Colors.transparent,
        padding: EdgeInsets.only(top: 0),
        alignment: MediaQuery.of(context).orientation == Orientation.portrait
            ? Alignment.center
            : Alignment.topLeft,
        child: Center(
          child: Wrap(
            spacing: 2,
            alignment: WrapAlignment.start,
            children: List.generate(widget.menus.length, (index) {
              return menu(
                textMenu: widget.menus[index].textMenu,
                onTap: widget.menus[index].onTap,
                iconMenu: widget.menus[index].icon,
                intBedge: widget.menus[index].intBadge,
              );
            }),
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: 40, left: 15, right: 15),
      padding: EdgeInsets.all(0),
      width: widget.width,
      height: widget.heigth,
      decoration: BoxDecoration(
        color: ColorUtil().scafoldColor,
        borderRadius: BorderRadius.all(Radius.circular(14)),
        boxShadow: [
          BoxShadow(
            color: ColorUtil().scafoldColor.withOpacity(0.5),
            blurRadius: 5.0,
            offset: Offset(5, 2),
          ),
        ],
      ),
      child: ListView(padding: EdgeInsets.only(top: 5), children: <Widget>[
        mainMenu(),
      ]),
    );
  }
}
