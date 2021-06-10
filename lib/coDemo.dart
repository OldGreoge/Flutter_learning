import 'package:flutter/material.dart';

class coDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Column(
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
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.network('https://icon.qiantucdn.com/static/reference/reference-2.png',fit: BoxFit.fitHeight,),
                  ),
                  flex: 2,
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:95,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                        child: Image.network('https://icon.qiantucdn.com/static/reference/reference-3.png',fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 95,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                        child:Image.network('https://icon.qiantucdn.com/static/reference/reference-4.png',fit: BoxFit.fitHeight,),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),

          ),
        ],
      ),
      padding: EdgeInsets.all(8),
    );
  }

}