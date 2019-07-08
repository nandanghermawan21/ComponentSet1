import 'package:component_set1/project/holcimBeton/ColorUtil.dart';
import 'package:component_set1/custom/radio_custom.dart' as radio;
import 'package:flutter/material.dart';

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
              Row(
                children: <Widget>[
                  new radio.Radio(
                    value: 0,
                    activeColor: ColorUtil().mainColor,
                    inactiveColor: ColorUtil().mainColor,
                    groupValue: pengujian,
                    onChanged: handleRadioValueChange1,
                  ),
                  new Text(
                    "Option 2",
                  ),
                  new radio.Radio(
                    activeColor: ColorUtil().mainColor,
                    inactiveColor: ColorUtil().mainColor,
                    value: 1,
                    groupValue: pengujian,
                    onChanged: handleRadioValueChange1,
                  ),
                  new Text(
                    "Option 1",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
