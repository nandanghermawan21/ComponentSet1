import 'package:flutter/material.dart';
// import 'package:component_set1/MenuComponent.dart';
import 'package:component_set1/component/InputComponent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // _counter = new MenuComponent().addOne(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputComponent.inputTextWithCorner(
                borderInputGray: Colors.grey,
                inputBorderError: Colors.red,
                corner: 5,
                position: InputPosition.Center,
                hintText: "test input",
                keyboardType: TextInputType.numberWithOptions()
                // suffixIcon:
                ),
            SizedBox(
              height: 5,
            ),
            InputComponent.inputTextWithCorner(
              borderInputGray: Colors.grey,
              inputBorderError: Colors.red,
              corner: 5,
              position: InputPosition.Center,
            ),
            SizedBox(
              height: 5,
            ),
            InputComponent.inputTextWithCorner(
                borderInputGray: Colors.grey,
                inputBorderError: Colors.red,
                corner: 5,
                position: InputPosition.Center),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
