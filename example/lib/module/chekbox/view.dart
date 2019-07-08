import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:flutter/material.dart';
import 'package:component_set1/custom/check_box_custom.dart' as chekBoxCustom;

import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              chekBoxCustom.Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  onChanged: (bool val) {
                    setState(() {
                      conditioin = val;
                    });
                  },
                  value: conditioin),
              Text("sample checkbox")
            ],
          ),
        ),
      ),
    );
  }
}
