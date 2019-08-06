import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  static const Tab tabItem = Tab(
    icon: Icon(Icons.theaters),
    text: 'Events',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ListTile(title: Text('Events Page')),
        // Expanded(child: ReviewFeed()),
      ],
    );
  }
}
