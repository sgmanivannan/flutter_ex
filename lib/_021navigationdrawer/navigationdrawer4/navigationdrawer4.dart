import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer4/screens/account.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer4/screens/home.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer4/screens/settings.dart';

void main() => runApp(NavigationDrawerEx4());

class NavigationDrawerEx4 extends StatefulWidget {
  @override
  _NavigationDrawerEx4State createState() => _NavigationDrawerEx4State();
}

class _NavigationDrawerEx4State extends State<NavigationDrawerEx4> {
  Widget _widget;

  String _appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(_appBarTitle ?? 'Home'),
        ),
        drawer: _getDrawer(context),
        body: _widget ?? HomeScreen());
  }

  Drawer _getDrawer(BuildContext context) {
    var aboutChild = new AboutListTile(
        child: new Text("About"),
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: new Icon(Icons.adb),
        icon: new Icon(Icons.info));

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: new Text("Header")),
          _getDrawerItem(context, Icons.home, "Home", HomeScreen()),
          _getDrawerItem(
              context, Icons.account_box, "Account", AccountScreen()),
          _getDrawerItem(context, Icons.settings, "Settings", SettingsScreen()),
          aboutChild
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
