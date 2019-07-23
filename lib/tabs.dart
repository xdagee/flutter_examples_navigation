import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'NOW'),
                Tab(text: 'SCHEDULE'),
              ],
            ),
            title: Text(
              'My Play App with Tabs',
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_cafe),
              Icon(Icons.local_pizza),
            ],
          ),
        ),
      ),
    );
  }
}
