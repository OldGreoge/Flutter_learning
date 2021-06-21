import 'package:flutter/material.dart';
import 'package:flutter_app/carddemo.dart';
import 'package:flutter_app/pages/tabbarDemo.dart';
import 'package:flutter_app/statefulwidgetDemo.dart';
import 'package:flutter_app/wrapDemo.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  List _pageList=[sfwDemo(),cardDemo(),tabbarDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlutterDemo'),),
      body:this._pageList[this._currentIndex]
      // Column(
      //   children: <Widget>[
      //     SizedBox(height: 100,),
      //     loginLogo(),
      //     SizedBox(height: 80,),
      ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex=index;
          });
        },
        iconSize: 45,
        fixedColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.blue,),
            title: Text('Settings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,color: Colors.blue,),
            title: Text('Catalog'),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
              Row(
                children: <Widget>[
                    Expanded(
                        child: DrawerHeader(
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                ),
                                child: Text('Hello!')
                        ),
                    )
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text('我的'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('用户'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('设置'),
              ),
          ],
        ),
      ),
      // ],
      // ),
    );
  }
}
