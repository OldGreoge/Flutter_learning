import 'package:flutter/material.dart';

class loginLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue),
        ),
        padding: EdgeInsets.all(10),
        child: FlutterLogo(size: 70,),
      )
    );
  }
}
