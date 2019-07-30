import 'package:flutter/material.dart';
import 'pages/airport.dart';
import 'pages/caffe.dart';
import 'pages/pizza.dart';

class DrawerMain extends StatelessWidget {
  final String title;
  final _appTitle = 'My Play App';
  final _appBody = 'My Play App HomePage';

  DrawerMain({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appTitle),
      ),
      body: Center(
        child: Text(_appBody),
      ),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            currentAccountPicture: Image.asset('userProfileImage.jpg'),
            accountEmail: Text('maprincegee@gmail.com'),
            accountName: Text('Prince Boateng Asare'),
          ),
          ListTile(
            leading: Icon(Icons.local_airport),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Airport()));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_cafe),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Caffe()));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Pizza()));
            },
          )
        ],
      )),
    );
  }
}
