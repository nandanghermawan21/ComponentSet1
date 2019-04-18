import 'package:flutter/material.dart';
import 'package:component_icons/component_icons.dart';

class Componenticons extends StatefulWidget {
  @override
  ComponenticonsState createState() => ComponenticonsState();
}

class ComponenticonsState extends State<Componenticons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon data"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Icon(IconDataBrands(FontAwesomeBrandId.fa_accessible_icon)),
            Icon(IconDataLight(FontAwesomeId.fa_acorn)),
            Icon(IconDataSolid(FontAwesomeId.fa_acorn)),
            Icon(IconDataRegular(FontAwesomeId.fa_acorn)),
          ],
        ),
      ),
    );
  }
}
