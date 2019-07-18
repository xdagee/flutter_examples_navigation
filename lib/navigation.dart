import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Basics'),
        // appbar customizations
      ),
      // without hero widget
      // body: GestureDetector(
      //   onTap: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (_) {
      //       return DetailScreen();
      //     }));
      //   },
      //   child: Image.network('https://picsum.photos/250?image=9'),
      // ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // without the hero widget
      // body: GestureDetector(
      //   onTap: () {
      //     Navigator.pop(context);
      //   },
      //   child: Center(
      //     // loading image from the network
      //     child: Image.network('https://picsum.photos/250?image=9'),
      //   ),
      // ),

      // with the hero widget
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
