import 'package:flutter/material.dart';
import 'package:flutter_app/pages/search.dart';

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
              child: Text('增加次数！'),
              onPressed: (){
                setState(() {
                  this.countNun++;
                  this.list.add('这是第$countNun次增加数据!');
                });
              }),
            RaisedButton(
                child: Text('转到搜索页面'),
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>searchPage(title:'Hello Search!'))
                  );
                }),
            ElevatedButton(
                child: Text('命名路由跳转Search'),
                onPressed: (){
                  Navigator.pushNamed(context, '/search',arguments: {"id":'这是命名路由传值的'});
                }
            ),
            RaisedButton(
                child: Text('appBarDemoPage'),
                onPressed: (){
                  Navigator.pushNamed(context, '/appbar');
                }
            ),
        ]
      );
  }
}
