import 'package:component_icons/font_awesome.dart';
import 'package:flutter/material.dart';
import 'view.dart';

class Presenser extends StatefulWidget {
  final Color gripBackground; // = ColorUtil().scafoldColor.withOpacity(.8);
  final Color backgroundColor; // = ColorUtil().scafoldColor.withOpacity(.8);
  final IconData gripIcon;
  final Color gripColorOnFree; // = Colors.white;
  final Color gripColorOnDrag; // = ColorUtil().mainColor;
  final double minHeight; // = 25;
  final double maxHeight; // = 400;
  final double extraArea; // = 30;
  final bool isExpand;
  final Widget child;

  const Presenser({
    Key key,
    this.child,
    this.gripBackground = Colors.grey,
    this.backgroundColor = Colors.white,
    this.gripIcon = const FontAwesomeRegular(FontAwesomeId.fa_grip_lines),
    this.gripColorOnFree = Colors.black,
    this.gripColorOnDrag = Colors.black,
    this.minHeight = 25,
    this.maxHeight = 400,
    this.extraArea = 30,
    this.isExpand = false,
  }) : super(key: key);

  View createState() => View();
}

abstract class PresenterState extends State<Presenser> {
  Offset dragStart;
  bool isExpand;
  Color gripColor;
  double sizeBoxHeight; // = 400;

  @override
  void initState() {
    super.initState();
    isExpand = widget.isExpand;
    gripColor = widget.gripColorOnFree;
    sizeBoxHeight =
        isExpand ? widget.maxHeight : widget.minHeight + widget.extraArea;
  }
}
