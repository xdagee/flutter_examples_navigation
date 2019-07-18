import 'package:flutter/material.dart';

class Caffe extends StatefulWidget {
  @override
  _CaffeState createState() => _CaffeState();
}

class _CaffeState extends State<Caffe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caffe'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.local_cafe, size: 54.0),
            Text('Caffe',
                style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
    );
  }
}
