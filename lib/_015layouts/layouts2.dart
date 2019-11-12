import 'package:flutter/material.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(Layouts2());
}

// the root widget of our application
class Layouts2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building layouts"),
        ),
        body: ListView(
          children: <Widget>[
            bodyWidget('Hi World', myLayoutWidget1()),
            bodyWidget('Padding', myLayoutWidget2padding()),
            bodyWidget('Center', myLayoutWidget3Center()),
            bodyWidget('Align', myLayoutWidget4Align()),
            bodyWidget('Container', myLayoutWidget5Container()),
            bodyWidget('Rows', myLayoutWidget6Rows()),
            bodyWidget('Columns', myLayoutWidget7Columns()),
            bodyWidget('Expanded', myLayoutWidget8Expanded()),
            bodyWidget('Flex', myLayoutWidget9Flex()),
            bodyWidget('Stack 1', myLayoutWidget10Stack()),
            bodyWidget('Stack 2', myLayoutWidget11Stack()),
            bodyWidget('ComplexLayouts 1', myLayoutWidget12ComplexLayouts()),
            bodyWidget('ComplexLayouts 2', myLayoutWidget13ComplexLayouts()),
            bodyWidget('First Row As Function', myLayoutWidget14FirstRowAsFunction()),
            bodyWidget('First Row As Custom Widget', myLayoutWidget15FirstRowAsCustomWidget()),
          ],
        ),
      ),
    );
  }
}

Widget bodyWidget(String title, Widget view) {
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.deepOrangeAccent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(4.0))),
    child: Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600)),
        Divider(color: Colors.deepOrange),
        view
      ],
    ),
  );
}

// uncomment the section of code below that you want to run

// initial setup

Widget myLayoutWidget1() {
  return Text("Hi world!");
}

// padding

Widget myLayoutWidget2padding() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Text("Hello world!"),
  );
}

// center

Widget myLayoutWidget3Center() {
  return Center(
    child: Text(
      "Hello world!",
      style: TextStyle(fontSize: 30),
    ),
  );
}

// align

Widget myLayoutWidget4Align() {
  return Align(
    alignment: Alignment.topCenter,
    child: Text(
      "Hello",
      style: TextStyle(fontSize: 30),
    ),
  );
}

// container

Widget myLayoutWidget5Container() {
  return Container(
    margin: EdgeInsets.all(30.0),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topCenter,
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.green,
      border: Border.all(),
    ),
    child: Text("Hello", style: TextStyle(fontSize: 30)),
  );
}

// rows

Widget myLayoutWidget6Rows() {
  return Row(
    children: [
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
    ],
  );
}

// columns

Widget myLayoutWidget7Columns() {
  return Column(
    children: [
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
    ],
  );
}

// expanded

Widget myLayoutWidget8Expanded() {
  return Row(
    children: [
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.home)),
    ],
  );
}

// flex

Widget myLayoutWidget9Flex() {
  return Row(
    children: [
      Expanded(
        flex: 7,
        child: Container(
          height: 30,
          color: Colors.green,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          height: 30,
          color: Colors.yellow,
        ),
      ),
    ],
  );
}

// stacks

Widget myLayoutWidget10Stack() {
  return Stack(
    children: [
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
    ],
  );
}

Widget myLayoutWidget11Stack() {
  return Stack(

    // any unpositioned children (our text) will be aligned at the bottom right
    alignment: Alignment.bottomRight,

    children: [

      // first (bottom) child in the stack
      Image.asset('app_assets/images/monki/02.jpg'), //            <--- image

      // second child in the stack
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Baaaaaa', //                              <--- text
          style: TextStyle(fontSize: 30),
        ),
      ),

    ],
  );
}

// complex layouts

Widget myLayoutWidget12ComplexLayouts() {
  return Column(
    children: [
      Row(
        children: [
          Icon(Icons.favorite),
          Text('BEAMS'),
        ],
      ),
      Text('description...'),
      Row(
        children: [
          Text('EXPLORE BEAMS'),
          Icon(Icons.arrow_forward),
        ],
      ),
    ],
  );
}

Widget myLayoutWidget13ComplexLayouts() {

  // wrap everything in a purple container
  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.purple[900],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),

    // column of three rows
    child: Column(

      // this makes the column height hug its content
      mainAxisSize: MainAxisSize.min,
      children: [

        // first row
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.favorite,
                color: Colors.green,
              ),
            ),
            Text(
              'BEAMS',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),

        // second row (single item)
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 0,
          ),
          child: Text('Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        // third row
        Row(
          children: [
            Text('EXPLORE BEAMS',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.arrow_forward,
                color: Colors.green,
              ),
            ),
          ],
        ),

      ],
    ),
  );
}

// first row as a function

Widget myLayoutWidget14FirstRowAsFunction() {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Icon(Icons.favorite,
          color: Colors.green,
        ),
      ),
      Text(
        'BEAMS',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}

// first row as a custom widget

class myLayoutWidget15FirstRowAsCustomWidget extends StatelessWidget {
  // the build method is required when creating a StatelessWidget
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.favorite,
            color: Colors.green,
          ),
        ),
        Text(
          'BEAMS',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
