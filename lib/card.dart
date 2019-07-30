import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String _appTitle = 'My Play App';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appTitle),
      ),
      body: Center(
        child: Center(
          child: Text('data'),
        ),
      ),
    );
  }
}
