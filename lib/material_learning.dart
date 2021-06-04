import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mater extends StatefulWidget {
  const mater({Key key}) : super(key: key);

  @override
  _materState createState() => _materState();
}

class _materState extends State<mater> {
  int _selectIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material组件',
      theme: ThemeData(primaryColor: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          leading:IconButton(icon: Icon(Icons.arrow_back),
              onPressed: (){}),
          title: Text('Flutter Learning'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add),onPressed: (){}),
            IconButton(icon: Icon(Icons.dashboard),onPressed: (){}),
            IconButton(icon: Icon(Icons.cached),onPressed: (){}),
          ],
        ),
        body:Container(
          child: Text('body'),
          alignment: Alignment.center,
        ),
        drawer:Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(child: Text('头像（start)')),
              ListTile(title:Text('我的'),),
              ListTile(title:Text('关于'),),
              ListTile(title:Text('主页'),),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(child: Text('头像(end)')),
              ListTile(title: Text('我的'),),
              ListTile(title: Text('关于'),),
              ListTile(title: Text('主页'),),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Text('+'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        persistentFooterButtons: List.generate(3, (index) {
          return RaisedButton(onPressed: (){},
            child: Text("persistent"),
            textColor: Colors.greenAccent,);
        }),
        bottomNavigationBar:
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    title: Text('微信'),
                    icon: Icon(
                      Icons.wysiwyg,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      Icons.wysiwyg_outlined,
                      color: Colors.green,
                    ),
                ),
                BottomNavigationBarItem(
                    title: Text('通信录'),
                    icon: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Colors.green,
                    ),
                ),
                BottomNavigationBarItem(
                    title: Text('发现'),
                    icon: Icon(
                      Icons.zoom_in_sharp,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      Icons.zoom_in,
                      color: Colors.green,
                    ),
                ),
                BottomNavigationBarItem(
                    title: Text('我'),
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.black,
                    ),
                    activeIcon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.green,
                    ),
                ),
              ],
              iconSize: 24,
              currentIndex: _selectIndex,
              onTap: (index){
                setState(() {
                  _selectIndex=index;
                });
              },
              fixedColor: Colors.green,
              type: BottomNavigationBarType.shifting,
            )
        // Row(
        //   children: <Widget>[
        //     Expanded(
        //       child: RaisedButton(onPressed: (){},
        //        child: Text('微信'),),
        //       flex: 1,
        //     ),
        //     Expanded(
        //       child: RaisedButton(onPressed: (){},
        //        child: Text('通信录'),),
        //       flex: 1,
        //     ),
        //     Expanded(
        //       child: RaisedButton(onPressed: (){},
        //        child: Text('发现'),),
        //       flex: 1,
        //     ),
        //     Expanded(
        //       child: RaisedButton(onPressed: (){},
        //        child: Text('我'),),
        //       flex: 1,
        //     ),
        //   ],
        // ),
        // bottomSheet: RaisedButton(onPressed: (){},
        //   child: Text('bottomSheet'),),
        // RefreshIndicator(child: ListView(
        //   children: <Widget>[
        //     Container(
        //       width: 200,
        //       height:200,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         border: Border.all(color: Colors.greenAccent,width: 1,style: BorderStyle.solid),
        //         borderRadius: BorderRadius.all(Radius.circular(30))
        //       ),),
        //     Container(
        //       width: 200,
        //       height: 100,
        //       padding: EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //         color: Colors.greenAccent,
        //         border:Border.all(color: Colors.red,width: 1,style: BorderStyle.solid),
        //         borderRadius: BorderRadius.all(Radius.circular(10))
        //       ),
        //       child: new Text('子空间'),
        //       alignment: AlignmentDirectional.center,
        //     ),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: <Widget>[
        //         Container(
        //           width:50,
        //           height: 30,
        //           decoration: BoxDecoration(
        //             border:Border.all(
        //               color: Colors.red,width: 1,style: BorderStyle.solid)
        //             ),
        //             child: new Text("1"),
        //             alignment: AlignmentDirectional.center,
        //           ),
        //         Container(
        //           width:50,
        //           height: 30,
        //           decoration: BoxDecoration(
        //               border:Border.all(
        //                   color: Colors.red,width: 1,style: BorderStyle.solid)
        //           ),
        //           child: new Text("2"),
        //           alignment: AlignmentDirectional.center,
        //         ),
        //         Container(
        //           width:50,
        //           height: 30,
        //           margin: EdgeInsets.only(top: 30),
        //           decoration: BoxDecoration(
        //               border:Border.all(
        //                   color: Colors.red,width: 1,style: BorderStyle.solid)
        //           ),
        //           child: new Text("3"),
        //           alignment: AlignmentDirectional.center,
        //         ),
        //
        //       ],
        //     ),
        //
        //   ],
        // ),onRefresh: _handleRefresh),
      ),
    );
  }

  Future<void> _handleRefresh() async{
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }
}
