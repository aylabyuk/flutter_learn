import 'package:flutter/material.dart';

class ComicsPage extends StatelessWidget {
  static const Tab tabItem = Tab(
    icon: Icon(Icons.book),
    text: 'Comics',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ListTile(title: Text('Comics Page')),
        // Expanded(child: ReviewFeed()),
      ],
    );
  }
}
