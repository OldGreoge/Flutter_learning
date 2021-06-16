import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          SizedBox(height: 100,),
          Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue),
                ),
                padding: EdgeInsets.all(10),
                child: FlutterLogo(size: 70,),
              )
          ) ,
        ],
    );
  }
}
