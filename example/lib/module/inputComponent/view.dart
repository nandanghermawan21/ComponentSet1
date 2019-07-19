import 'package:component_set1/component/InputComponent.dart';
import 'package:component_set1/custom/material_custom.dart';
import 'package:component_set1/custom/date_time_picker.dart' as dateTimePicker;
import 'package:example/module/inputComponent/main.dart';

import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: <Widget>[
          componentBox(
              title: "inputTextWithCorner",
              component: InputComponent.inputTextWithCorner(
                corner: 50,
                hintText: "sample",
                suffixIcon: Icon(Icons.search),
                prefixIcon: Icon(Icons.verified_user),
              )),
          componentBox(
              title: "inputTextWithUnderLine",
              component: InputComponent.inputTextWithUnderLine(
                leadingIcon: Icons.verified_user,
                suffix: Icons.accessible,
                hintText: "sample",
              )),
          componentBox(
              title: "dateTimePicker",
              component: InputComponent.inputTextWithCorner(
                  controller: dateController,
                  corner: 5,
                  hintText: "sample",
                  suffixIcon: Icon(Icons.calendar_today),
                  onTap: () {
                    dateTimePicker
                        .showDateTimePicker(context,
                            mode: dateTimePicker.PickerMode.DateTime)
                        .then((onValue) {
                      print(onValue);
                    });
                  })),
        ],
      )),
    );
  }

  Widget componentBox({String title, Widget component}) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("$title"),
            ),
            component,
          ],
        ),
      ),
    );
  }
}
