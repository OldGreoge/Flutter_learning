import 'package:flutter/material.dart';
import 'package:flutter_app/res/listData.dart';

class cardDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: <Widget>[
                  Expanded(
                      child: TabBar(
                        indicatorColor: Colors.white,
                        indicatorWeight: 4,
                        tabs: <Widget>[
                          Tab(text: 'First',),
                          Tab(text: 'Second',),
                        ],
                      ),
                  ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: ListView(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text('小猪佩奇',style: TextStyle(fontSize: 28),),
                            subtitle: Text('指挥家'),
                          ),
                          ListTile(title: Text('电话:xxxxxx'),),
                          ListTile(title: Text('地址:xxxxxx'),),
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text('小猪乔治',style: TextStyle(fontSize: 28),),
                            subtitle: Text('拉屎专家'),
                          ),
                          ListTile(title: Text('电话:xxxxxx'),),
                          ListTile(title: Text('地址:xxxxxx'),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: ListView(
                    children: listData.map((e) {
                      return Card(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 20/9,
                              child: Image.network(e['imageUrl'],fit: BoxFit.cover),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(e['headphoto']),
                              ),
                              title: Text(e['title']),
                              subtitle: Text(e['author']),
                            ),
                          ],
                        ),
                      );
                    }).toList()
                )
              )
            ],
          ),
        )
    );
  }
}

class cardAspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((e) {
        return Card(
          margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 20/9,
                  child: Image.network(e['imageUrl'],fit: BoxFit.cover),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(e['headphoto']),
                  ),
                  title: Text(e['title']),
                  subtitle: Text(e['author']),
                ),
              ],
            ),
          );
      }).toList()
    );
  }
}
