import 'package:flutter/material.dart';
import 'package:flutter_app/data_type.dart';
import 'package:flutter_app/material_sty_widget.dart';
import 'package:flutter_app/statefull_group_page.dart';

import 'columnRowDemo.dart';
import 'gridview_learn.dart';
import 'listview_learn.dart';
import 'listviewapp.dart';
import 'login.dart';
import 'paddingDemo.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('FlutterDemo'),),
        body: columnDemo(),
      )
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           appBar: AppBar(
//             title: Text(widget.title),
//           ),
//           body: paddingDemo()
//     );
//    }
// }
