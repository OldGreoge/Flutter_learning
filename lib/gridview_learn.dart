import 'package:flutter/material.dart';
import 'package:flutter_app/res/listData.dart';
import 'res/listData.dart';

class GridViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridviewDemo'),
        ),
        body: GridViewDemoC(),
      ),

    );
  }

}

class GridViewDemoA extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        scrollDirection: Axis.vertical,   //列表滚动的方向
        crossAxisCount: 2,                //一行widget的数量
        mainAxisSpacing: 10,              //垂直widget之间的间距
        crossAxisSpacing: 10,             //水平widget之间的间距
        childAspectRatio: 0.7,            //widget宽高比例
        padding: EdgeInsets.all(3),
        children: _getItem(),
    );
  }

  List<Widget> _getItem(){
    var tempList=listData.map((value) => Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
            Image.network(value["imageUrl"],
              height: 200,
              width: 200,
            ),
            SizedBox(height: 10,),
            Text(value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20
              ),
            )
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 1
        )
      ),
    ));
    return tempList.toList();
    // List<Widget> list=[];
    // for(int i=0;i<100;i++){
    //   list.add(_getWidget(i));
    // }
    // return list;
  }

  // Widget _getWidget(int i) {
  //   return Container(
  //     height: 30,
  //     alignment: Alignment.center,
  //     color: Colors.greenAccent,
  //     child: Text(i.toString()),
  //   );
  // }

}


class GridViewDemoB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemCount: listData.length,
      itemBuilder: this._getItem,
    );
  }

  Widget _getItem(context,index) {
       return Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Image.network(listData[index]["imageUrl"],
                height: 200,
                width: 200,
              ),
              SizedBox(height: 10,),
              Text(listData[index]['title'],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blue,
                  width: 1
              )
          ),
        );
  }
}

class GridViewDemoC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3/4
        ),
        childrenDelegate: SliverChildBuilderDelegate((context,index){
          return _getWidget(index);
        }),
      semanticChildCount: 100,
    );
  }

  Widget _getWidget(int index) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      color: Colors.pinkAccent,
      child: Text(index.toString()),
    );
  }

  // List<Widget> _getItem(){
  //   List<Widget> list=[];
  //   for(int i=0;i<100;i++){
  //     list.add(_getWidget(i));
  //   }
  //   return list;
  // }
}
