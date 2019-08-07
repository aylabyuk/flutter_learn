import 'package:flutter/material.dart';
import './client_provider.dart';
import './characters/characters_page.dart';
import './comics/comics_page.dart';
import './events/events_page.dart';
import './custom_search_delegate.dart';

final String GRAPHQL_ENDPOINT = 'https://api.marvelql.com/';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClientProvider(
      uri: GRAPHQL_ENDPOINT,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marvel',
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: HomePage(title: 'MARVEL'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final content = <Widget>[
      SliverAppBar(
        floating: true,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          )
        ],
      ),
    ];

    switch (_selectedIndex) {
      case 0:
        content.add(CharactersPage());
        break;
      case 1:
        content.add(ComicsPage());
        break;
      default:
        content.add(EventsPage());
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: content,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          CharactersPage.navItem,
          ComicsPage.navItem,
          EventsPage.navItem,
        ],
        currentIndex: _selectedIndex,
        onTap: _navigateTo,
      ),
    );
  }
}
