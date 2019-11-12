import 'package:flutter/material.dart';
import 'package:flutter_ex/utils/utils.dart';

class NavigationEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _scafold('Navigation EX',
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _body('Open First Page', onClick: () => Utils.navigationPush(context, FirstPage())),
            _body('EXIT Navigation EX', onClick: () => Utils.navigationPop(context))
          ],
        ));
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _scafold('First Page',
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _body('Open Second Page', onClick: () => Utils.navigationPush(context, SecondPage())),
            _body('EXIT First Page', onClick: () => Utils.navigationPop(context))
          ],
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _scafold('Second Page',_body('EXIT Second Page', onClick: () => Utils.navigationPop(context)));
  }
}

_scafold(String title, Widget widget) {
  return Scaffold(
    appBar: AppBar(
      title: Text(title),
    ),
    body: widget,
  );
}

_body(String buttonText, {Function onClick}) {
  return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        onPressed: onClick,
        child: Text(buttonText),
      ));
}
