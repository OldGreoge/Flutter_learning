import 'package:flutter/material.dart';

class ListviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FLUTTER Demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings,color: Colors.deepPurpleAccent,),
          title: Text(
            'AAAAAAA',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text('aaaaaaaaaaaaaaaaa'),
        ),
        ListTile(
          leading: Icon(Icons.home,color: Colors.amber,),
          title: Text(
            'BBBBBBB',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text('bbbbbbbbbbbbbbbb'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'CCCCCCCC',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text('ccccccccccccccccccc'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'DDDDDDDD',
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text('dddddddddddddddddddd'),
        ),
      ],
    );
  }
}
