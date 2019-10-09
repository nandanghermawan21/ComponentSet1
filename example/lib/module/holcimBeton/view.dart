import 'package:component_set1/project/holcimBeton/DecorationComponent.dart';
import 'package:example/component/containerComponent.dart';
import 'package:flutter/material.dart';
import 'presenter.dart';
import 'package:component_set1/component/InputComponent.dart';
import 'package:component_icons/font_awesome.dart';
import 'package:component_set1/project/holcimBeton/BottonComponent.dart';
import 'package:component_set1/project/holcimBeton/module/menu/main.dart'
    as menu;

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ContainerComponent.componentBox(
              title: "MainButton",
              background: Colors.green,
              component: BottonComponent.mainBotton(
                  text: "sample botton",
                  onTap: () {
                    print("tab the main button");
                  })),
          ContainerComponent.componentBox(
              title: "BoxDecoration",
              height: 700,
              background: Colors.green,
              component: Container(
                width: double.infinity,
                height: 700 - 50.0,
                // color: Colors.red,
                decoration: DecorationComponent.boxDecoration(),
              )),
          ContainerComponent.componentBox(
              title: "Menu",
              height: 400,
              background: Colors.green,
              component: Container(
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 400 - 50.0,
                // color: Colors.red,
                decoration: DecorationComponent.boxDecoration(),
                child: menu.Presenter(
                  menus: <menu.HolcimBetonMenuModel>[
                    menu.HolcimBetonMenuModel(
                        textMenu: "Notification",
                        icon: FontAwesomeRegular(FontAwesomeId.fa_bell)),
                    menu.HolcimBetonMenuModel(
                        textMenu: "Job Order",
                        icon:
                            FontAwesomeRegular(FontAwesomeId.fa_file_invoice)),
                    menu.HolcimBetonMenuModel(
                        textMenu: "Shipment",
                        icon:
                            FontAwesomeRegular(FontAwesomeId.fa_shipping_fast)),
                    menu.HolcimBetonMenuModel(
                        textMenu: "live Maps",
                        icon: FontAwesomeRegular(FontAwesomeId.fa_map_marked)),
                    menu.HolcimBetonMenuModel(
                        textMenu: "Pump",
                        icon: FontAwesomeRegular(FontAwesomeId.fa_gas_pump)),
                    menu.HolcimBetonMenuModel(
                        textMenu: "Emergency",
                        icon:
                            FontAwesomeRegular(FontAwesomeId.fa_lightbulb_on)),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
