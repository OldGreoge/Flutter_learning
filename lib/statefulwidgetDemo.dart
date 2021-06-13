import 'package:flutter/material.dart';

class sfwDemo extends StatefulWidget {
  const sfwDemo({Key key}) : super(key: key);

  @override
  _sfwDemoState createState() => _sfwDemoState();
}

class _sfwDemoState extends State<sfwDemo> {
  List list = new List();
  int countNun=0;
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: <Widget>[
            Column(
              children: this.list.map((e){
                return ListTile(
                  title: Text(e),
                );
              }).toList(),
            ),
            SizedBox(height:20,),
            RaisedButton(
              child: Text('按钮1'),
              onPressed: (){
                setState(() {
                  this.countNun++;
                  this.list.add('这是第$countNun次增加数据!');
                });
              })
        ]
      );
  }
}
