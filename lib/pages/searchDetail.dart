import 'package:flutter/material.dart';

class searchDetailPage extends StatefulWidget {
  final Map arguments;
  searchDetailPage({Key key, this.arguments}) : super(key: key);

  @override
  _searchDetailPageState createState() => _searchDetailPageState(arguments:this.arguments);
}

class _searchDetailPageState extends State<searchDetailPage> {
  Map arguments;
  _searchDetailPageState({this.arguments});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('SearchDetailPages!!!'),),
      body: Container(
        child: Text('传值为：${arguments!=null?arguments['id']:'0'}'),
      ),
    );
  }
}
