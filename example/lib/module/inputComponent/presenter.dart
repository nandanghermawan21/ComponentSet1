import 'package:flutter/material.dart';
import 'package:component_set1/custom/date_picker_custom.dart' as datePicker;
import 'view.dart';

class Presenter extends StatefulWidget {
  View createState() => View();
}

abstract class PresenterState extends State<Presenter> {
  TextEditingController dateController = new TextEditingController();

  Future<Null> selectDate(BuildContext context) async {

    final DateTime picked = await datePicker.showDatePicker(
        backgroundHeader: Colors.red,
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(9999));
    if (picked != null && picked != DateTime.now())
      setState(() {
        dateController.text =
            "${picked.toLocal().year}/${picked.toLocal().month}/${picked.toLocal().day}";
      });
  }
}
