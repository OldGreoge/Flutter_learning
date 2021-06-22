import 'package:flutter/material.dart';
import 'package:flutter_app/carddemo.dart';
import 'package:flutter_app/pages/TextFieldDemo.dart';
import 'package:flutter_app/pages/tabbarDemo.dart';
import 'package:flutter_app/statefulwidgetDemo.dart';
import 'package:flutter_app/wrapDemo.dart';

import 'Login/login.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  List _pageList=[sfwDemo(),cardDemo(),loginPage(),tabbarDemo(),TextFieldDemo()];
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
      floatingActionButton: Container(
        height:60,
        width: 60,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add,color: Colors.white),
          onPressed: (){
            setState(() {
              this._currentIndex=2;
            });
          },
          backgroundColor: _currentIndex==2?Colors.deepOrange:Colors.blue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex=index;
          });
        },
        iconSize: 25,
        // fixedColor: Colors.deepOrange,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('AppBar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Login'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            title: Text('TabBar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('TextField'),
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
