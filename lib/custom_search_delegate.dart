import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final tests = [
    "test1",
    "asd",
    "123",
    "tset2",
    "asdasd",
  ];

  final recentTests = [
    "asd",
    "123",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentTests : tests;

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.location_city),
          title: Text(suggestionList[index])),
      itemCount: suggestionList.length,
    );
  }
}
