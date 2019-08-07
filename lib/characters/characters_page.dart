import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  static const Tab tabItem = Tab(
    icon: Icon(Icons.person),
    text: 'Characters',
  );

  Widget _charsListView(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('row $index'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: _charsListView(context),
        )
      ],
    );
  }
}
