import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/res/listData.dart';

class paddingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child:GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
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
      ),
    );
  }
  List<Widget> _getImage(){
    var list=listData.map((e) => Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Image.network(e["imageUrl"],
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
      ),
      
    ));
    return list.toList();
  }
}