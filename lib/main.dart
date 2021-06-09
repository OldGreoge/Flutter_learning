import 'package:flutter/material.dart';
import 'package:flutter_app/data_type.dart';
import 'package:flutter_app/material_sty_widget.dart';
import 'package:flutter_app/statefull_group_page.dart';

import 'gridview_learn.dart';
import 'listview_learn.dart';
import 'listviewapp.dart';
import 'login.dart';

void main()=> runApp(login());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter dart基础',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter dart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            dataType()
          ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
