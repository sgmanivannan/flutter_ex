import 'package:flutter/material.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer2/screens/account.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer2/screens/home.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer2/screens/settings.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
    },
  ));
}

class NavigationDrawerEx2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomeScreen(), // route for home is '/' implicitly
      routes: <String, WidgetBuilder>{
        // define the routes
        SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
        AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
      },
    );
  }
}

