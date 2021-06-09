import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child:Text('Login')
          ),
        ),
        body: Container(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue),
              ),
              padding: EdgeInsets.all(10),
              child: FlutterLogo(size: 70,),
            ),
          ),
        ),
      ),
    );
  }
}
