import 'package:flutter/material.dart';

class coDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
          Container(
            height: 200,
            color: Colors.lightBlue,
            alignment: AlignmentDirectional.center,
            child: Center(child:Text('Hello Flutter',style: TextStyle(fontSize: 32,color: Colors.grey),) ,),
          ),
        SizedBox(height: 10,),
        Container(
          alignment: AlignmentDirectional.center,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.network('https://icon.qiantucdn.com/static/reference/reference-2.png'),
                flex: 2,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.network('https://icon.qiantucdn.com/static/reference/reference-3.png'),
                    SizedBox(height: 10,),
                    Image.network('https://icon.qiantucdn.com/static/reference/reference-4.png'),
                  ],
                ),
                flex: 1,
              ),
            ],
          ),

        ),
      ],
    );
  }

}