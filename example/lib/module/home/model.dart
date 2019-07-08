import 'package:flutter/material.dart';
import '../chekbox/main.dart' as chekBox;
import '../radioButton/main.dart' as radioBotton;

class Menu {
  String title;
  IconData icon;
  String description;
  Widget widget;

  Menu(
      {@required this.title,
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
    ];
  }
}
