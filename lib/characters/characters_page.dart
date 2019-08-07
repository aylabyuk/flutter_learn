import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.person),
    title: Text('Characters'),
  );

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(color: Colors.red, height: 150.0),
          Container(color: Colors.purple, height: 150.0),
          Container(color: Colors.green, height: 150.0),
          Container(color: Colors.red, height: 150.0),
          Container(color: Colors.purple, height: 150.0),
          Container(color: Colors.green, height: 150.0),
        ],
      ),
    );
  }
}
