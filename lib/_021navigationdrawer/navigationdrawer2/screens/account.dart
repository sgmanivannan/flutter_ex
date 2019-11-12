import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/ND2Account';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Account"),
      ),
      body: new Container(
          child: new Center(
        child: new Text("Account Screen"),
      )),
    );
  }
}
