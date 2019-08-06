import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  static const Tab tabItem = Tab(
    icon: Icon(Icons.person),
    text: 'Characters',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ListTile(title: Text('Characters Page')),
        // Expanded(child: ReviewFeed()),
      ],
    );
  }
}
