import 'package:flutter/material.dart';

class ComicsPage extends StatelessWidget {
  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.book),
    title: Text('Comics'),
  );

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(color: Colors.orange, height: 150.0),
          Container(color: Colors.purple, height: 150.0),
          Container(color: Colors.green, height: 150.0),
          Container(color: Colors.orange, height: 150.0),
          Container(color: Colors.purple, height: 150.0),
          Container(color: Colors.green, height: 150.0),
        ],
      ),
    );
  }
}
