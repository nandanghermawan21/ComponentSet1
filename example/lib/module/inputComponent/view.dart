import 'package:component_set1/component/InputComponent.dart';
import 'package:component_set1/custom/material_custom.dart';
import 'package:component_set1/custom/date_time_picker.dart' as dateTimePicker;
import '../../component/containerComponent.dart';
import 'main.dart';

import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: <Widget>[
          ContainerComponent.componentBox(
              title: "inputTextWithCorner",
              component: InputComponent.inputTextWithCorner(
                corner: 50,
                hintText: "sample",
                suffixIcon: Icon(Icons.search),
                prefixIcon: Icon(Icons.verified_user),
              )),
          ContainerComponent.componentBox(
              title: "inputTextWithUnderLine",
              component: InputComponent.inputTextWithUnderLine(
                leadingIcon: Icons.verified_user,
                suffix: Icons.accessible,
                hintText: "sample",
              )),
          ContainerComponent.componentBox(
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
                        .then((date) {
                      if (date != null)
                        dateController.text =
                            "${date.day}/${date.month}/${date.year}  ${date.hour}:${date.minute}  ";
                    });
                  })),
          ContainerComponent.componentBox(
              title: "inputTextWithUnderLine",
              component: InputComponent.dropDownWithCorner(
                  // backgroundColor: ColorUtil().inputTextBackground,
                  onChangeds: changedDropDownConcrete,
                  value: currentConcrete,
                  items: dropDownMenuConcrete)),
        ],
      )),
    );
  }
}
