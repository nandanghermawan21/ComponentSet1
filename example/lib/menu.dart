import 'package:example/presenter/GrovinSample.dart';
import 'package:flutter/material.dart';
import 'package:component_icons/font_awesome.dart';
import 'package:reorderables/reorderables.dart';
import 'package:component_set1/util/NavigationUtil.dart';

class Menu extends StatefulWidget {
  @override
  MenuState createState() => MenuState();
}

class MenuState extends State<Menu> {
  final double _iconSize = 90;
  List<Widget> _tiles;

  @override
  void initState() {
    super.initState();
  }

  Widget menuItem({String title, IconData icon, VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.white,
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                    height: 80,
                    width: 100,
                    color: Colors.white,
                    child: Center(
                        child: Icon(icon ??
                            FontAwesomeRegular(FontAwesomeId.fa_home)))),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title ?? "Menu Name",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void initMenuItem(BuildContext context) {
    _tiles = <Widget>[
      menuItem(
          icon: FontAwesomeRegular(FontAwesomeId.fa_angle_double_up),
          title: "Swipe Up Modal",
          onTap: () {
            NavigationUtil.navTo(context, GroovinSample());
          }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    initMenuItem(context);

    ReorderableWrap wrap = ReorderableWrap(
      spacing: 8.0,
      runSpacing: 4.0,
      padding: const EdgeInsets.all(8),
      children: _tiles,
      onReorder: _onReorder,
      onNoReorder: (int index) {
        //this callback is optional
        debugPrint(
            '${DateTime.now().toString().substring(5, 22)} reorder cancelled. index:$index');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Component Set 1"),
      ),
      body: Container(child: column(MediaQuery.of(context).size.width, wrap)),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      Widget row = _tiles.removeAt(oldIndex);
      _tiles.insert(newIndex, row);
    });
  }

  Column column(double width, ReorderableWrap wrap) {
    return Column(
      crossAxisAlignment: (_tiles.length * (100 + 10)) > width
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: <Widget>[
        wrap,
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              iconSize: 50,
              icon: Icon(Icons.add_circle),
              color: Colors.deepOrange,
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                var newTile = Icon(Icons.filter_9_plus, size: _iconSize);
                setState(() {
                  _tiles.add(newTile);
                });
              },
            ),
            IconButton(
              iconSize: 50,
              icon: Icon(Icons.remove_circle),
              color: Colors.teal,
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                setState(() {
                  _tiles.removeAt(0);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
