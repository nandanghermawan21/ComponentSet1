import 'package:component_set1/component/ButtonComponent.dart';
import 'package:component_set1/component/ModalComponent.dart';
import 'package:component_set1/custom/material_custom.dart';
import '../../component/containerComponent.dart';
import 'package:component_set1/project/holcimBeton/ModalComponent.dart'
    as modalHB;
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
            title: "Modal Bottom Standart",
            component: ButtonComponent.roundedButton(
                text: "Click Me",
                onPressed: () {
                  ModalComponent.bottomModalWithCorner(context);
                }),
          ),
          ContainerComponent.componentBox(
            title: "Modal Botton Holcim Beton",
            component: ButtonComponent.roundedButton(
                text: "Click Me",
                onPressed: () {
                  modalHB.ModalComponent.bottonModal(context);
                }),
          ),
        ],
      )),
    );
  }
}
