import 'package:flutter/material.dart';

import 'home.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _appLogoTitle = 'My Play App';
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/appLogo.png',
                  width: 96.0,
                  height: 96.0,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(_appLogoTitle),
                SizedBox(
                  height: 120.0,
                ),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text('SKIP'),
                      onPressed: () {
                        _usernameController.clear();
                        _passwordController.clear();
                      },
                    ),
                    RaisedButton(
                      child: const Text('NEXT'),
                      color: Theme.of(context).accentColor,
                      elevation: 8.0,
                      splashColor: Colors.tealAccent,
                      onPressed: () {
                        // Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
