import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class MyPlayApp extends StatelessWidget {
  final String _appTitle = 'My Play App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      home: MyHomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      theme: ThemeData(
        // primaryColor: Colors.teal,
        accentColor: Colors.amber,
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => MyLogin(),
        fullscreenDialog: true);
  }
}
