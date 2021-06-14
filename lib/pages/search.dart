import 'package:flutter/material.dart';

class searchPage extends StatelessWidget {
  String title;
  final Map arguments;
  searchPage({this.title='搜索页面',this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('BACK'),
        onPressed: ()=>Navigator.of(context).pop(),
      ),
      appBar:AppBar(title: Text(this.title),),
      body: Center(
      child: Column(
        children: <Widget>[
          Text('${arguments==null?'空白':arguments['id']}搜索',style: TextStyle(fontSize: 44,color: Colors.deepPurple,),),
          RaisedButton(
              child: Text('搜索'),
              onPressed: ()=>
                  Navigator.pushNamed(context, '/searchdetail',arguments: {"id":'这是命名路由传值的'}),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    )
    );
  }
}
