import 'package:flutter/material.dart';
import 'package:flutter_app/data_type.dart';

class Statefulgroup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Statefullgroupstate();

}

class _Statefullgroupstate extends State<Statefulgroup>{
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefulWidget组件',
      theme:ThemeData(primarySwatch: Colors.lightBlue,),
      home: Scaffold(
        appBar:AppBar(title: Text('StatefulWidget组件'),
        ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         onTap: (index){
           setState(() {
             _currentIndex=index;
           });
         },
         items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.home,color: Colors.grey,),
           activeIcon: Icon(Icons.home,color: Colors.blue,),
           title: Text('首页')
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.home,color: Colors.grey,),
           activeIcon: Icon(Icons.home,color: Colors.blue,),
             title:Text('列表')
         ),
       ]),
       floatingActionButton: FloatingActionButton(
         onPressed: null,
         child: Text('点我'),
       ),
       body: _currentIndex==0?
        RefreshIndicator(child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white12),
              alignment: Alignment.center,
              // child: Column(
              //   children: <Widget>[
                  child: Text('data'),
              //   ],
              // ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(top:10),
              decoration: BoxDecoration(color:Colors.lightGreenAccent),
              child: PageView(
                children: [
                  _item('Page1',Colors.red),
                  _item('Page2',Colors.amberAccent),
                  _item('Page3',Colors.deepPurpleAccent),
                ],
              ),
            )
          ],

        ), onRefresh: _handleRefresh)
           :Container(child:Text("data2"),),

      ),
    );
  }
  Future<Null> _handleRefresh() async{
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }

  _item(String s, Color color) {
    return Container(
      alignment:Alignment.center,
      decoration:BoxDecoration(color:color),
      child:Text(
        s,
        style: TextStyle(fontSize: 22,color:Colors.white),
      ),);
  }
}
