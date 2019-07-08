import 'package:flutter/material.dart';
import 'model.dart';
import 'view.dart';

class Presenter extends StatefulWidget {
  final String title;
  final List<Menu> menus;

  const Presenter({Key key, this.title, this.menus}) : super(key: key);

  View createState() => View();
}

abstract class PresenterState extends State<Presenter> {}
