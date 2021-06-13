import 'package:flutter/material.dart';

class wrapDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      runAlignment: WrapAlignment.center,
      children: <Widget>[
          MyButton('hello!'),
          MyButton('hello!'),
          MyButton('hello!'),
          MyButton('hello!'),
          MyButton('hello!'),
          MyButton('hello!'),
      ],
    );
  }
}

class MyButton extends StatelessWidget{

  final String text;
  const MyButton(this.text,{Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(this.text),
        textColor: Theme.of(context).accentColor,
        onPressed: (){}
        );
  }
}
