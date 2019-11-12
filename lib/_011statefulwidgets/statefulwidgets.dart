import 'package:flutter/material.dart';

/*
Stateful Widget
A widget that has mutable state.

A stateful widget is a widget that describes part of the user interface by building a constellation of other widgets that describe the user interface more concretely.
The building process continues recursively until the description of the user interface is fully concrete
 */

void main() {
  runApp(StatefulWidgets());
}

class StatefulWidgets extends StatefulWidget {
  @override
  StatefulWidgetsState createState() {
    return StatefulWidgetsState();
  }
}

class StatefulWidgetsState extends State<StatefulWidgets> {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', "and", "awesome!"];
  String displayedString = "Hello World!";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(displayedString, style: TextStyle(fontSize: 40.0)),
                Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  child: Text(
                    "Press me",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: onPressOfButton,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
