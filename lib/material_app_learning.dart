import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class material_learning extends StatefulWidget {
  const material_learning({Key key}) : super(key: key);

  @override
  _material_learningState createState() => _material_learningState();
}

class _material_learningState extends State<material_learning> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material组件',
      theme: ThemeData(primaryColor: Colors.pink),
      home: Scaffold(
        appBar: AppBar(title: Text('Material组件'),),
        body:

        RefreshIndicator(child: ListView(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 80,height: 80),
              child: Container(
                color: Colors.lightBlue,
                child: Text('hELLO!'),)
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              //   border: Border.all(color: Colors.greenAccent,width: 1,style: BorderStyle.solid),
              //   borderRadius: BorderRadius.all(Radius.circular(30))
              // ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
                child: Text("Hello world!"),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border:Border.all(color: Colors.red,width: 1,style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: new Text('子空间'),
              alignment: AlignmentDirectional.center,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width:50,
                  height: 30,
                  decoration: BoxDecoration(
                    border:Border.all(
                      color: Colors.red,width: 1,style: BorderStyle.solid)
                    ),
                    child: new Text("1"),
                    alignment: AlignmentDirectional.center,
                  ),
                Container(
                  width:50,
                  height: 30,
                  decoration: BoxDecoration(
                      border:Border.all(
                          color: Colors.red,width: 1,style: BorderStyle.solid)
                  ),
                  child: new Text("2"),
                  alignment: AlignmentDirectional.center,
                ),
                Container(
                  width:50,
                  height: 30,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                      border:Border.all(
                          color: Colors.red,width: 1,style: BorderStyle.solid)
                  ),
                  child: new Text("3"),
                  alignment: AlignmentDirectional.center,
                ),
                
              ],
            ),

          ],
        ),onRefresh: _handleRefresh),
      ),
    );
  }

  Future<void> _handleRefresh() async{
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }
}
