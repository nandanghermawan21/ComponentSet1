import 'package:flutter/material.dart';
import 'package:example/view/GroovinSampleView.dart';

class GroovinSample extends StatefulWidget {
  GroovinSampleView createState() => GroovinSampleView();
}

abstract class GroovinSampleState extends State<GroovinSample> {
  var value;
  bool isExpanded = false;
}
