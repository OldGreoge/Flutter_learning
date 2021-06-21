import 'package:flutter/material.dart';

class appbarDemo extends StatelessWidget {
  const appbarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text('AppBarDemoPage!'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: '第一个'),
                Tab(text:'第二个'),
                Tab(text:'第三个'),
                Tab(text:'第四个'),
              ],
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){

              }),
              IconButton(icon: Icon(Icons.add), onPressed: (){

              }),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
                ListView(
                  children: <Widget>[
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                  ],
                ),
                ListView(
                  children: <Widget>[
                      ListTile(title: Text('第二个TAB'),),
                      ListTile(title: Text('第二个TAB'),),
                      ListTile(title: Text('第二个TAB'),),
                      ListTile(title: Text('第二个TAB'),),
                      ListTile(title: Text('第二个TAB'),),
                      ListTile(title: Text('第二个TAB'),),
                      ListTile(title: Text('第二个TAB'),),
                  ],
                ),
                ListView(
                  children: <Widget>[
                      ListTile(title: Text('第三个TAB'),),
                      ListTile(title: Text('第三个TAB'),),
                      ListTile(title: Text('第三个TAB'),),
                      ListTile(title: Text('第三个TAB'),),
                      ListTile(title: Text('第三个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                  ],
                ),
                ListView(
                  children: <Widget>[
                      ListTile(title: Text('第4个TAB'),),
                      ListTile(title: Text('第4个TAB'),),
                      ListTile(title: Text('第4个TAB'),),
                      ListTile(title: Text('第4个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                      ListTile(title: Text('第一个TAB'),),
                  ],
                ),
            ],
          ),
        )
    );
  }
}


