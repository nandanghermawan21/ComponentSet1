import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:component_set1/util/NavigationUtil.dart';
import 'package:flutter/material.dart';
import 'package:component_set1/util/FontUtil.dart';
import 'package:component_set1/component/InputComponent.dart';

import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            size: FontUtil().lPlus,
            color: ColorUtil().greenColor,
          ),
          title: Text(
            "${widget.title ?? "Title"}",
            style: TextStyle(
                color: ColorUtil().greenColor, fontSize: FontUtil().lPlus),
          ),
          backgroundColor: Color(0xFF565657),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              ListView(
                padding: const EdgeInsets.only(
                    top: 80, left: 8, right: 8, bottom: 8),
                children: List.generate(widget.menus.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                        leading: Icon(widget.menus[index].icon),
                        title: Text("${widget.menus[index].title}"),
                        subtitle: Text("${widget.menus[index].description}"),
                        onTap: () {
                          NavigationUtil.navTo(
                              context, widget.menus[index].widget);
                        },
                      ),
                    ),
                  );
                }),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: InputComponent.inputTextWithCorner(
                    corner: 5, backgroundColor: Colors.white, hintText: "Cari"),
              ),
            ],
          ),
        ));
  }
}
