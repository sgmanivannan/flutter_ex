import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Dialogs2());
}

class Dialogs2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatelessWidgetDemo(),
    );
  }
}

class StatelessWidgetDemo extends StatefulWidget {
  @override
  _StatelessWidgetDemoState createState() => _StatelessWidgetDemoState();
}

class _StatelessWidgetDemoState extends State<StatelessWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Dialog Demo'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      _showMaterialDialog(context);
                    },
                    child: Text('Show Material Dialog'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      _showCupertinoDialog(context);
                    },
                    child: Text('Show Cupertino Dialog'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      _showSimpleDialog(context);
                    },
                    child: Text('Show Simple Dialog'),
                  )
                ],
              ),
            )));
  }

  void _showMaterialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Material Dialog'),
            content: Text('This is the content of the material dialog'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _dismissDialog(context);
                  },
                  child: Text('Close')),
              FlatButton(
                onPressed: () {
                  print('HelloWorld!');
                  _dismissDialog(context);
                },
                child: Text('HelloWorld!'),
              )
            ],
          );
        });
  }

  _dismissDialog(BuildContext context) {
    //Navigator.pop(context);
    Navigator.of(context).pop();
  }

  void _showCupertinoDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Cupertino Dialog'),
            content: Text('This is the content of the cupertino dialog'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _dismissDialog(context);
                  },
                  child: Text('Close')),
              FlatButton(
                onPressed: () {
                  print('HelloWorld!');
                  _dismissDialog(context);
                },
                child: Text('HelloWorld!'),
              )
            ],
          );
        });
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Chosse an Option'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog(context);
                },
                child: const Text('Option 1'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog(context);
                },
                child: const Text('Option 2'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog(context);
                },
                child: const Text('Option 3'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _dismissDialog(context);
                },
                child: const Text('Option 4'),
              ),
            ],
          );
        });
  }
}