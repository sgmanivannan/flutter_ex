import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/ND3Account';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*appBar: new AppBar(
        title: new Text("Account"),
      ),*/
      body: new Container(
          color: Colors.green,
          child: new Center(
            child: new Text(
              "Account Screen",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
          )),
    );
  }
}
