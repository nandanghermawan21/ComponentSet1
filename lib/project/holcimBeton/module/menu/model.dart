import 'package:component_set1/custom/material_custom.dart';

class HolcimBetonMenuModel {
  String textMenu;
  VoidCallback onTap;
  IconData icon;
  int intBadge;
  EdgeInsets iconMargin;

  HolcimBetonMenuModel({this.textMenu, this.onTap, this.icon, this.intBadge, this.iconMargin = const EdgeInsets.all(0)});
}
