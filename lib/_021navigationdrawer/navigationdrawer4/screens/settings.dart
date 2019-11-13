import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/ND3Settings';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /* appBar: new AppBar(
        title: new Text("Settings"),
      ),*/
      body: new Container(
          color: Colors.redAccent,
          child: new Center(
            child: new Text(
              "Settings Screen",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
          )),
    );
  }
}
