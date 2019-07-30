import 'package:flutter/material.dart';
import '../chekbox/main.dart' as chekBox;
import '../radioButton/main.dart' as radioBotton;
import '../project/holcimBeton/menu/main.dart' as holcimBetonMenu;
import 'package:component_set1/project/holcimBeton/module/location/main.dart'
    as holcimBetonLocation;
import '../inputComponent/main.dart' as inputComponent;
import '../modalComponent/main.dart' as modalComponent;
import '../holcimBeton/main.dart' as holcimBeton;

class Menu {
  PeojectName project;
  String title;
  IconData icon;
  String description;
  Widget widget;

  Menu(
      {this.project = PeojectName.general,
      @required this.title,
      @required this.icon,
      @required this.description,
      @required this.widget});

  static List<Menu> componentSetGlobal() {
    return <Menu>[
      Menu(
          title: "Custom Chek Box",
          description:
              "custom dari chekbox bawaan flutter menambahkan properties warna dan background saat chekbox tidak active",
          icon: Icons.add_box,
          widget: chekBox.Presenser()),
      Menu(
          title: "Radio Botton",
          description:
              "custom dari chekbox bawaan flutter menambahkan properties warna dan background saat chekbox tidak active",
          icon: Icons.add_box,
          widget: radioBotton.Presenser()),
      Menu(
          title: "Radio Botton",
          description:
              "custom dari chekbox bawaan flutter menambahkan properties warna dan background saat chekbox tidak active",
          icon: Icons.add_box,
          widget: radioBotton.Presenser()),
      Menu(
          project: PeojectName.holcimBeton,
          title: "Holcim Beton Menu",
          description: "ini adalah design menu holcim beron",
          icon: Icons.add_box,
          widget: holcimBetonMenu.Presenser()),
      Menu(
        project: PeojectName.holcimBeton,
        title: "Holcim Beton Location",
        description:
            "location picker, get location by entering address and return prediction",
        icon: Icons.map,
        widget: holcimBetonLocation.Presenter(
          apiGoogleMap: "AIzaSyBE996CIxSciAsuAPanJ3izkguREa6VvYA",
          onSave: (onValue) {},
          onBack: null,
          title: "Location Picker",
          saveText: "Save",
          backText: "Back",
        ),
      ),
      Menu(
        project: PeojectName.general,
        title: "Global Input Component",
        description: "jenis jenis input component",
        icon: Icons.add_box,
        widget: inputComponent.Presenter(),
      ),
      Menu(
        project: PeojectName.general,
        title: "Global Modal Component",
        description: "Modal dan popup component",
        icon: Icons.add_box,
        widget: modalComponent.Presenter(),
      ),
      Menu(
        project: PeojectName.general,
        title: "Holcim Beton Component",
        description: "All about Holcim Beton Component",
        icon: Icons.add_box,
        widget: holcimBeton.Presenter(),
      ),
    ];
  }
}

enum PeojectName {
  general,
  holcimBeton,
}
