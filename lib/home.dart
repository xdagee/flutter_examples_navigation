import 'package:flutter/material.dart';

import 'pages/airport.dart';
import 'pages/caffe.dart';
import 'pages/pizza.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final String _appTitle = 'My Play App';
  final String _cardTitle = 'Card Title';
  final String _cardSecondaryTitle = 'Card Secondary Title';

  MyHomePage({Key key, this.title}) : super(key: key);

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
      (int index) => Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0 / 11.0,
                  child: Image.asset('assets/vlc.app.png'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _cardTitle,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        _cardSecondaryTitle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
    );
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(_appTitle),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'Search',
            ),
            onPressed: () {
              print('Search button clicked!');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'Filter',
            ),
            onPressed: () {
              print('Fliter button clicked!');
            },
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(10),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              currentAccountPicture: Image.asset('assets/userProfileImage.jpg'),
              accountName: Text(
                'Prince Boateng Asare',
              ),
              accountEmail: Text(
                'maprincegee@gmail.com',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.local_airport,
              ),
              title: Text(
                'Airport',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Airport()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_cafe,
              ),
              title: Text(
                'Caffe',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Caffe()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_pizza,
              ),
              title: Text(
                'Pizza',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pizza()));
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
