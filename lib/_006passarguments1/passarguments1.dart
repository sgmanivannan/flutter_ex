import 'package:flutter/material.dart';

const String HomeViewRoute = '/';
const String LoginViewRoute = 'login';

Route<dynamic> _generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginViewRoute:
      var loginArgument = settings.arguments;
      return MaterialPageRoute(builder: (context) => LoginView(argument: loginArgument));
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}

class PassArgumentsEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routing',
      onGenerateRoute: _generateRoute,
      initialRoute: HomeViewRoute,
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Home'),
            RaisedButton(
              child: Text('Launch Login!'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, LoginViewRoute, arguments: 'Data Passed in');
              },
            )
          ],
        ),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  final String argument;
  const LoginView({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Container(alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Login Result:  $argument'),
            RaisedButton(
              child: Text('Go Back'),
              onPressed: () {
                // Navigate back to the first screen by popping the current route
                // off the stack.
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
