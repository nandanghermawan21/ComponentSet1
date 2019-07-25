import 'package:example/module/inputComponent/main.dart';
import 'package:flutter/material.dart';
import 'view.dart';

class Presenter extends StatefulWidget {
  View createState() => View();
}

abstract class PresenterState extends State<Presenter> {
  TextEditingController dateController = new TextEditingController();

   @override
  void initState() {
    super.initState();
    dropDownMenuConcrete = getDropDownMenuStrukturTypes();
    currentConcrete = dropDownMenuConcrete[0].value;
  }

  List<User> users = [
    User(id: 1, nama: "Nandang Hermawan", address: "Kadungora Garut", age: 27),
    User(
        id: 1, nama: "Poppy Permata Sari", address: "Limbangan Garut", age: 27),
    User(id: 1, nama: "Ade Herdiana", address: "Bantul Jogja", age: 27),
    User(id: 1, nama: "Indra Nugroho", address: "Kualanamu Medan", age: 27),
  ];

  List<DropdownMenuItem<String>> dropDownMenuConcrete;
  String currentConcrete = '';
  List strukturTypes = ["1s", "2s", "3s", "4s", "5s"];

  void changedDropDownConcrete(String concrete) {
    setState(() {
      currentConcrete = concrete;
    });
  }

  List<DropdownMenuItem<String>> getDropDownMenuStrukturTypes() {
    List<DropdownMenuItem<String>> items = new List();
    for (String strukturType in strukturTypes) {
      items.add(new DropdownMenuItem(
          value: strukturType, child: new Text(strukturType)));
    }
    return items;
  }
}
