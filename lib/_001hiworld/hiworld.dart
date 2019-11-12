import 'package:flutter/material.dart';

class HiWorld extends StatefulWidget {
  @override
  _HiWorldState createState() => _HiWorldState();
}

class _HiWorldState extends State<HiWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi World'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Hi World....!", style: TextStyle(fontWeight: FontWeight.w500),),
      ),
    );
  }
}
