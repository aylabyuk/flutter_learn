import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.theaters),
    title: Text('Events'),
  );

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(color: Colors.blueGrey, height: 150.0),
          Container(color: Colors.purple, height: 150.0),
          Container(color: Colors.green, height: 150.0),
        ],
      ),
    );
  }
}
