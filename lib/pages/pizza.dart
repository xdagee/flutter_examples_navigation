import 'package:flutter/material.dart';

class Pizza extends StatefulWidget {
  @override
  _PizzaState createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.local_pizza,
              size: 54.0,
            ),
            Text(
              'Pizza',
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
