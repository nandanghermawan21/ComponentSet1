import 'package:example/component/containerComponent.dart';
import 'package:flutter/material.dart';
import 'presenter.dart';
import 'package:component_set1/component/InputComponent.dart';
import 'package:component_set1/project/holcimBeton/BottonComponent.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ContainerComponent.componentBox(
              title: "MainButton",
              background: Colors.green,
              component: BottonComponent.mainBotton(
                  text: "sample botton",
                  onTap: () {
                    print("tab the main button");
                  }))
        ],
      ),
    );
  }
}
