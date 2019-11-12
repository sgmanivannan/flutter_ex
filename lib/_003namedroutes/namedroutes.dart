import 'package:flutter/material.dart';

void main_() {
  Map<String, WidgetBuilder> _routes = Map();
  _routes['/'] = (context) => NamedRoutePage1();
  _routes[NamedRoutePage2.routeName] = (context) => NamedRoutePage2();

  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => NamedRoutePage1(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/namedRoutePage2': (context) => NamedRoutePage2(),
    },
  ));
}

class NamedRoutesEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _initialRoute = '/';
    Map<String, WidgetBuilder> _routes = Map();
    _routes[_initialRoute] = (context) => NamedRouteHome();
    _routes[NamedRoutePage1.routeName] = (context) => NamedRoutePage1();
    _routes[NamedRoutePage2.routeName] = (context) => NamedRoutePage2();

    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: _initialRoute,
      routes: _routes,
    );
  }
}

class NamedRouteHome extends StatelessWidget {
  static const routeName = 'namedRouteHome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routes Home"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, NamedRoutePage1.routeName);
          },
          child: Text('Launch NamedRoutePage1!'),
        ),
      ),
    );
  }
}

class NamedRoutePage1 extends StatelessWidget {
  static const routeName = 'namedRoutePage1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Launch NamedRoutePage2!'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, NamedRoutePage2.routeName);
              },
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to the first screen by popping the current route
                // off the stack.
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            )
          ],
        ),
      ),
    );
  }
}

class NamedRoutePage2 extends StatelessWidget {
  static const routeName = 'namedRoutePage2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
