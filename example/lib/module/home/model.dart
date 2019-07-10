import 'package:flutter/material.dart';
import '../chekbox/main.dart' as chekBox;
import '../radioButton/main.dart' as radioBotton;
import '../project/holcimBeton/menu/main.dart' as holcimBetonMenu;

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
    ];
  }
}

enum PeojectName {
  general,
  holcimBeton,
}
