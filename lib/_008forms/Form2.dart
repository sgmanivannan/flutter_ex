import 'package:flutter/material.dart';

void main() => runApp(Form2());

class Form2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'TextField TextFormField Styles demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Enter a search term'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Enter your username'),
        ),
      ],
    );
  }
}
