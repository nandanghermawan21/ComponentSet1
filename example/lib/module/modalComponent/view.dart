// import 'package:component_set1/component/ButtonComponent.dart';
// import 'package:component_set1/component/ModalComponent.dart';
// import 'package:component_set1/custom/material_custom.dart';
// import '../../component/containerComponent.dart';
// import 'package:component_set1/project/holcimBeton/ModalComponent.dart'
//     as modalHB;
// import 'main.dart';

// import 'presenter.dart';

// class View extends PresenterState {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: ListView(
//         children: <Widget>[
//           ContainerComponent.componentBox(
//             title: "ModalComponent.bottomModalWithCorner",
//             component: ButtonComponent.roundedButton(
//                 text: "Click Me",
//                 onPressed: () {
//                   ModalComponent.bottomModalWithCorner(
//                     context,
//                     child: GestureDetector(
//                       onTap: () {
//                         print("fire me");
//                       },
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         color: Colors.red,
//                       ),
//                     ),
//                   );
//                 }),
//           ),
//           ContainerComponent.componentBox(
//             title: "HolcimBetonModal.modalBottomComfirmation",
//             component: ButtonComponent.roundedButton(
//                 text: "Click Me",
//                 onPressed: () {
//                   HolcimBetonModal.modalBottomComfirmation(context,
//                       onConfirm: () {
//                     print("on confirm callback");
//                   });
//                 }),
//           ),
//           ContainerComponent.componentBox(
//             title: "Modal Botton Holcim Beton",
//             component: ButtonComponent.roundedButton(
//                 text: "Click Me",
//                 onPressed: () {
//                   modalHB.ModalComponent.bottonModal(context);
//                 }),
//           ),
//         ],
//       )),
//     );
//   }
// }
