import 'package:flutter/material.dart';
import 'package:example/presenter/GrovinSample.dart';
import 'package:groovin_widgets/groovin_widgets.dart';
import 'package:component_set1/component/ModalComponent.dart';

class GroovinSampleView extends GroovinSampleState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplitColorBackground(
        headerColor: Colors.indigo,
        header: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'GroovinWidgets',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: OutlineDropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text("Test Item"),
                      value: "Test Item",
                    ),
                  ],
                  isExpanded: true,
                  hint: Text("Test Hint"),
                  value: value,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: Material(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: GroovinExpansionTile(
                    defaultTrailingIconColor: Colors.indigoAccent,
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigoAccent,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Test Person",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text("123-456-7890"),
                    onExpansionChanged: (value) {
                      setState(() {
                        isExpanded = value;
                      });
                    },
                    inkwellRadius: !isExpanded
                        ? BorderRadius.all(Radius.circular(8.0))
                        : BorderRadius.only(
                            topRight: Radius.circular(8.0),
                            topLeft: Radius.circular(8.0),
                          ),
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.notifications),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.comment),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.phone),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Material(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                      HolcimBetonModal.modalBottomComfirmation(context);
                    },
                    title: Text(
                      "Modal Confirmation",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text("bottom confirmation holcim beton"),
                  ),
                ),
              ),
            ],
          ),
        ),
        bodyFlex: 4,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.drag_handle),
          onPressed: () => ModalComponent.bottomModalWithCorner(context),
        ),
      ),
    );
  }
}
