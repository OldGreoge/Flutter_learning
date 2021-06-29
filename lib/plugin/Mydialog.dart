import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog{

  String title;
  String content;

  MyDialog({this.title='标题', this.content='内容'});

  _showTimer(context){
    var timer;
    timer=Timer.periodic(
      Duration(milliseconds: 3000),(t){
        Navigator.pop(context);
        t.cancel();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text('${this.title}'),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: Icon(Icons.clear),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text('${this.content}',textAlign: TextAlign.left,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}