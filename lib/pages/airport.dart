import 'package:flutter/material.dart';

class Airport extends StatefulWidget {
  @override
  _AirportState createState() => _AirportState();
}

class _AirportState extends State<Airport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airport'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.local_airport,
              size: 54.0,
            ),
            Text(
              'Airport',
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
