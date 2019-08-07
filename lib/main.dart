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
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
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
        SliverFillRemaining(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CharactersPage(),
                  ComicsPage(),
                  EventsPage(),
                ],
              ),
              bottomNavigationBar: new TabBar(
                tabs: <Widget>[
                  CharactersPage.tabItem,
                  ComicsPage.tabItem,
                  EventsPage.tabItem,
                ],
                labelColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.red, width: 3.0),
                  insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 70.0),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
