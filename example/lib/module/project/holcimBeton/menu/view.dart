import 'package:flutter/material.dart';
import 'package:component_icons/font_awesome.dart';
import 'package:component_set1/project/holcimBeton/module/menu/main.dart'
    as menu;

import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Holcim Beton Menu"),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
            child: menu.Presenter(
          width: MediaQuery.of(context).size.width,
          heigth: MediaQuery.of(context).size.height - 345,
          menus: <menu.HolcimBetonMenuModel>[
            menu.HolcimBetonMenuModel(
                textMenu: "newProject",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_plus)),
            menu.HolcimBetonMenuModel(
                textMenu: "listProject",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_list)),
            menu.HolcimBetonMenuModel(
                textMenu: "shipment",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_shipping_fast)),
            menu.HolcimBetonMenuModel(
                textMenu: "payment",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_money_check_alt),
                iconMargin: EdgeInsets.only(right: 5)),
            menu.HolcimBetonMenuModel(
                textMenu: "product",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_box_check),
                iconMargin: EdgeInsets.only(right: 2)),
            menu.HolcimBetonMenuModel(
                textMenu: "calculator",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_calculator_alt)),
            menu.HolcimBetonMenuModel(
                textMenu: "manual",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_book_open),
                iconMargin: EdgeInsets.only(right: 5)),
            menu.HolcimBetonMenuModel(
                textMenu: "contact",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_headphones)),
            menu.HolcimBetonMenuModel(
                textMenu: "setting",
                onTap: () => {},
                icon: FontAwesomeRegular(FontAwesomeId.fa_cog)),
          ],
        )),
      ),
    );
  }
}
