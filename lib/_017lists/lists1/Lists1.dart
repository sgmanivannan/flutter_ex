
import 'package:flutter/material.dart';
import 'package:flutter_ex/_017lists/lists1/static_listview.dart';
import 'package:flutter_ex/_017lists/lists1/touch_detection.dart';
import 'package:flutter_ex/_017lists/lists1/update_animatedlist.dart';
import 'package:flutter_ex/_017lists/lists1/update_listview.dart';

import 'cards.dart';
import 'custom_listitem.dart';
import 'dynamic_listview.dart';
import 'horizontal_listview.dart';
import 'infinate_list.dart';
import 'listtile_styling.dart';


void main() => runApp(Lists1());

class Lists1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}


Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Static ListView'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, StaticListViewScreen());
        },
      ),
      ListTile(
        title: Text('Dynamic ListView'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, DynamicListViewScreen());
        },
      ),
      ListTile(
        title: Text('Infinite ListView'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, InfiniteListViewScreen());
        },
      ),
      ListTile(
        title: Text('Horizontal ListView'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, HorizontalListViewScreen());
        },
      ),
      ListTile(
        title: Text('ListTile styling'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, ListTileStylingScreen());
        },
      ),
      ListTile(
        title: Text('Cards'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, CardsScreen());
        },
      ),
      ListTile(
        title: Text('Custom list item'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, CustomListItemScreen());
        },
      ),
      ListTile(
        title: Text('Touch detection'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, TouchDetectionScreen());
        },
      ),
      ListTile(
        title: Text('Update ListView'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, UpdateListViewScreen());
        },
      ),
      ListTile(
        title: Text('Update AnimatedList'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, UpdateAnimatedListScreen());
        },
      ),
    ],
  );
}

void _pushScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

