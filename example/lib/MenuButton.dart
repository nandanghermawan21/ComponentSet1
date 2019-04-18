import 'package:flutter/material.dart';
import 'package:component_icons/component_icons.dart';

class MenuButton extends StatefulWidget {
  @override
  MenuButtonState createState() => MenuButtonState();
}

class MenuButtonState extends State<MenuButton> {
  // property

  Container menu({
    double sizeMenuButton = 100,
    Color bgMenu = Colors.black12,
    double radiusMenu = 5,
    IconData iconMenu = const IconDataRegular(FontAwesomeId.fa_bell),
    Color colorIcon = const Color(0xff5555BF),
    double sizeIcon = 27.2,
    Color colorBedge = const Color(0xffFF9500),
    String textBedge = "1",
    Color colorTextBedge = Colors.white,
    String textMenu = 'Notification',
    Color colorRxtMenu = const Color(0xFF707070),
    double sizeTextMenu = 11,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      width: sizeMenuButton,
      height: sizeMenuButton,
      decoration: BoxDecoration(
        color: bgMenu,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.all(10),
                width: sizeMenuButton / 4,
                height: sizeMenuButton / 4,
                decoration: BoxDecoration(
                  color: colorBedge,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(textBedge,
                        style: TextStyle(color: colorTextBedge))),
              )),
          Align(
              alignment: Alignment.center,
              child: Icon(
                iconMenu,
                color: colorIcon,
                size: sizeIcon,
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  textMenu,
                  style: TextStyle(color: colorRxtMenu, fontSize: sizeTextMenu),
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("menu data"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            // color: Colors.greenAccent,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 4,
              children: <Widget>[
                menu(iconMenu: IconDataRegular(FontAwesomeId.fa_acorn)),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
                menu(),
              ],
            ),
          ),
          Text("dagdgsgsdg")
        ],
      ),
    );
  }
}
