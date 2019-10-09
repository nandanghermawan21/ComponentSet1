import 'package:component_set1/custom/material_custom.dart';

class ContainerComponent {
  static Widget componentBox(
      {String title, Widget component, Color background, double height}) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: height ?? 110,
      width: double.infinity,
      decoration: BoxDecoration(
          color: background ?? Colors.grey.withOpacity(0.3),
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
            component
          ],
        ),
      ),
    );
  }
}
