import 'package:flutter/material.dart';
import './client_provider.dart';

final String GRAPHQL_ENDPOINT = 'https://api.marvelql.com/';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClientProvider(
      uri: GRAPHQL_ENDPOINT,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marvel Characters',
        theme: ThemeData(
          primaryColor: Colors.orange,
        ),
        home: HomePage(title: 'Marvel Characters'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
