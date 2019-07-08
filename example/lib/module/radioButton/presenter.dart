import 'package:component_set1/component/InputComponent.dart';
import 'package:flutter/material.dart';

import 'view.dart';

class Presenser extends StatefulWidget {
  View createState() => View();
}

abstract class PresenterState extends State<Presenser> {
  TextEditingController labController = new TextEditingController();
  TextEditingController biayaController = new TextEditingController();
  StateInput labState;
  StateInput biayaState;

  FocusNode labFocus = FocusNode();
  FocusNode biayaFocus = FocusNode();

  int pengujian = 0;
  bool inputData = false;
  void handleRadioValueChange1(int value) {
    if (value == 1) {
      setState(() {
        pengujian = value;
        inputData = true;
      });
    } else {
      setState(() {
        pengujian = value;
        inputData = false;
      });
    }
  }
}
