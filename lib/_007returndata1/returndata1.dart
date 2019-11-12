import 'package:flutter/material.dart';

const String HomeViewRoute = '/';
const String LoginViewRoute = 'login';

Route<dynamic> _generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}

class ReturnDataEx1 extends StatelessWidget {
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
  _navigateAndGetResult(BuildContext context) async {
    // Navigate to the second screen using a named route.
    var result = await Navigator.pushNamed(context, LoginViewRoute);

    if(result != null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('From Login Result : ${result}'),
          ));
    }
  }

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
                _navigateAndGetResult(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pop(context, 'I am From Login page onBackButtonClick, Thank U!');
          return false;
        },
        child: Container(alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Login'),
            RaisedButton(
              child: Text('Go Back'),
              onPressed: () {
                // Navigate back to the first screen by popping the current route
                // off the stack.
                Navigator.pop(context, 'I am From Login page onButtonClick, Thank U!');
              },
            )
          ],
        ),
      ),),
    );
  }
}
