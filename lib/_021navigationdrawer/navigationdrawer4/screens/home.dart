import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*appBar: new AppBar(
        title: new Text("Home"),
      ),*/
      body: new Container(
          color: Colors.blueGrey,
          child: new Center(
            child: new Text(
              "Home Screen",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
          )),
    );
  }
}
