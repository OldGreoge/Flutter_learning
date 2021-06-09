import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/res/listData.dart';

class paddingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: _getImage(),
        // children: <Widget>[
        //   Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a6efce1b9d16fdfa622c468bb98f8c5494ee7b17.jpg"),
        //   Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a6efce1b9d16fdfa622c468bb98f8c5494ee7b17.jpg"),
        //   Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a6efce1b9d16fdfa622c468bb98f8c5494ee7b17.jpg"),
        //   Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a6efce1b9d16fdfa622c468bb98f8c5494ee7b17.jpg"),
        //   Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a6efce1b9d16fdfa622c468bb98f8c5494ee7b17.jpg"),
        //   Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a6efce1b9d16fdfa622c468bb98f8c5494ee7b17.jpg"),
        //   Image.network("https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a6efce1b9d16fdfa622c468bb98f8c5494ee7b17.jpg"),
        // ]
    );
  }
  List<Widget> _getImage(){
    var list=listData.map((e) => Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Image.network(e["imageUrl"],
            height: 200,
            width: 200,
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 1
        )
      ),
    ));
    return list.toList();
  }
}