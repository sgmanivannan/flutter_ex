import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static navigationPush(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => widget),
    );
  }

  static navigationPop(BuildContext context) {
    Navigator.pop(context);
  }
}

class StatelessPage extends StatelessWidget {
  Widget _appBar, _body;

  StatelessPage(this._appBar, this._body);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}

Widget CustomAppBar(String appBarTitle,
    {Color backgroundColor: Colors.lightBlue, Color titleColor: Colors.white}) {
  return AppBar(
    title: Text(
      appBarTitle,
      style: TextStyle(color: titleColor),
    ),
    backgroundColor: backgroundColor,
  );
}
