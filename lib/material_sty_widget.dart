

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mater extends StatefulWidget {
  const mater({Key key}) : super(key: key);

  @override
  _materState createState() => _materState();
}

class _materState extends State<mater> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material风格组件',
      theme:ThemeData(primarySwatch: Colors.lightBlue,),
      home: Scaffold(
       appBar:AppBar(title: Text('StatefulWidget组件'),
        ),
       body: RefreshIndicator(
         child: ListView(
           children: <Widget>[
             Container(
               width: 200,
               height: 100,
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.deepPurpleAccent,width: 1,style: BorderStyle.solid),
               ),
               child: new Text("子控件"),
               alignment: AlignmentDirectional.center,
             ),
           ],
         ),onRefresh: _handleRefresh),
      ),
    );
  }
  Future<Null> _handleRefresh() async{
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }
}
