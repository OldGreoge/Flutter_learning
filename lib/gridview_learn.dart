import 'package:flutter/material.dart';

class GridViewDemoA extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gridview A'),
        ),
        body: GridViewDemo(),
      ),
    );
  }

}

class GridViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 3/4,
        padding: EdgeInsets.all(3),
        children: _getItem(),
    );
  }

  List<Widget> _getItem(){
    List<Widget> list=[];
    for(int i=0;i<100;i++){
      list.add(_getWidget(i));
    }
    return list;
  }

  Widget _getWidget(int i) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: Text(i.toString()),
    );
  }

}