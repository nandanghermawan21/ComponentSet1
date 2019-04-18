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
    int textBedge = 0,
    Color colorTextBedge = Colors.white,
    String textMenu = '',
    Color colorRxtMenu = const Color(0xFF707070),
    double sizeTextMenu = 11,
  }) {
    return Container(
      margin: EdgeInsets.all(5),
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
              child: textBedge == 0
                  ? Container()
                  : Container(
                      margin: EdgeInsets.all(10),
                      width: sizeMenuButton / 4,
                      height: sizeMenuButton / 4,
                      decoration: BoxDecoration(
                        color: colorBedge,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text("$textBedge",
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

  Container mainMenu() {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: MediaQuery.of(context).orientation == Orientation.portrait
          ? Alignment.center
          : Alignment.topLeft,
      margin: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.all(10)
          : EdgeInsets.fromLTRB(35, 10, 35, 10),
      child: Wrap(
        spacing: 2,
        alignment: WrapAlignment.end,
        children: <Widget>[
          menu(
              textMenu: 'Notifikasi',
              iconMenu: IconDataLight(FontAwesomeId.fa_acorn),
              textBedge: 1),
          menu(
              textMenu: 'Job', iconMenu: IconDataLight(FontAwesomeId.fa_tasks)),
          menu(
              textMenu: 'Route',
              iconMenu: IconDataLight(FontAwesomeId.fa_map_marked)),
          menu(
              textMenu: 'Job',
              iconMenu: IconDataLight(FontAwesomeId.fa_file_alt)),
          menu(
              textMenu: 'Setting',
              iconMenu: IconDataLight(FontAwesomeId.fa_cog)),
          menu(),
          menu(),
          menu(),
          menu(),
          menu(),
          menu(),
          menu(),
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
        children: <Widget>[mainMenu()],
      ),
    );
  }
}
