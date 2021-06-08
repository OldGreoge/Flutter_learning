import 'package:flutter/material.dart';

class ListviewLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FLUTTER Listview Demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index){
          return Container(height: 1,color: Colors.greenAccent,);
        },
        separatorBuilder: (context,index){
          return Container(
            height: 50,
            alignment: Alignment.center,
            child: Text('Hello World ' + index.toString()),
          );
        },
        itemCount: 10000);
    // return Container(
    //   height: 200,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: <Widget>[
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.deepOrange,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.deepPurpleAccent,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.grey,
    //       ),
    //     ],
    //   ),
    // );
  }
}
