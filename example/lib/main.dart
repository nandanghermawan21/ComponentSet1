import 'package:flutter/material.dart';
import 'module/home/main.dart' as home;

void main() {
  runApp(MaterialApp(
    title: 'Component Set',
    theme: ThemeData(canvasColor: Colors.white),
    home: home.Presenter(
      title: "Component Set 1",
      menus: home.Menu.componentSetGlobal(),
    ),
  ));
}
