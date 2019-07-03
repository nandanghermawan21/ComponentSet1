import 'package:component_set1/custom/material_custom.dart';
import 'package:component_set1/project/holcimBeton/module/menu/model.dart';

import 'view.dart';

class Presenter extends StatefulWidget {
  final List<HolcimBetonMenuModel> menus;
  final double width;
  final double heigth;

  const Presenter({Key key, this.menus, this.width, this.heigth}) : super(key: key);

  View createState() => View();
}

abstract class PresenterState extends State<Presenter> {}
