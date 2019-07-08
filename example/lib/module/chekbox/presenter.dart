import 'package:flutter/material.dart';

import 'view.dart';

class Presenser extends StatefulWidget{
    View createState() => View();
}

abstract class PresenterState extends State<Presenser>{
  bool conditioin = false;
}