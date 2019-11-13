import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(NavigationDrawerEx3());

class NavigationDrawerEx3 extends StatefulWidget {
  @override
  _NavigationDrawerEx3State createState() => _NavigationDrawerEx3State();
}

class _NavigationDrawerEx3State extends State<NavigationDrawerEx3> {
  Widget _widget;

  String _appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(_appBarTitle ?? 'Home'),
        ),
        drawer: _getDrawer(context),
        body: _widget ?? _home());
  }

  Drawer _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: new Text("Header")),
          _getDrawerItem(context, Icons.home, "Home", _home()),
          _getDrawerItem(context, Icons.account_box, "Account", _account()),
          _getDrawerItem(context, Icons.settings, "Settings", _settings())
        ],
      ),
    );
  }

  ListTile _getDrawerItem(
      BuildContext context, var icon, String s, Widget navigateScreenWidget) {
    return new ListTile(
      leading: new Icon(icon),
      title: new Text(s),
      onTap: () {
        Navigator.pop(context);
        _changeWidget(s, navigateScreenWidget);
      },
    );
  }

  void _changeWidget(String appbarTitle, Widget changedWidget) {
    _appBarTitle = appbarTitle;
    _widget = changedWidget;
    setState(() {});
  }

  Widget _home() {
    print('home');
    return Container(
      alignment: Alignment.center,
      color: Colors.lightBlue,
      child: Text('Home'),
    );
  }

  Widget _settings() {
    print('settings');
    return Container(
      alignment: Alignment.center,
      color: Colors.lightGreenAccent,
      child: Text('Settings'),
    );
  }

  Widget _account() {
    print('account');
    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: Text('Account'),
    );
  }
}
