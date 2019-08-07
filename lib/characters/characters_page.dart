import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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
          Query(
            options: QueryOptions(
              document: r'''
                query {
                  characters(limit: 2 offset: 10) {
                    id
                    thumbnail
                    name
                    description
                  }
                }
              ''',
            ),
            builder: (QueryResult result, {VoidCallback refetch}) {
              if (result.errors != null) {
                return Text(result.errors.toString());
              }

              if (result.loading) {
                return Center(child: Text('Loading'));
              }

              List characters = result.data['characters'];

              return Column(
                children: characters
                    .map((character) => Container(
                          child: Center(child: Text(character['name'])),
                          height: 100,
                        ))
                    .toList(),
              );
            },
          )
        ],
      ),
    );
  }
}
