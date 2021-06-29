import 'package:flutter/material.dart';
import 'package:flutter_app/plugin/Mydialog.dart';
import 'package:flutter_app/plugin/ToastDemo.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatefulWidget {
  const SwiperDemo({Key key}) : super(key: key);

  @override
  _SwiperDemoState createState() => _SwiperDemoState();
}

class _SwiperDemoState extends State<SwiperDemo> {
  List<Map> imglist = [
    {'url':'https://www.itying.com/images/flutter/1.png'},
    {'url':'https://www.itying.com/images/flutter/2.png'},
    {'url':'https://www.itying.com/images/flutter/3.png'},
    {'url':'https://www.itying.com/images/flutter/4.png'},
  ];

  _alterDialog() async {

    var result =await showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要XXOO吗？'),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){
                    Toastd('取消');
                    Navigator.pop(context,'Cancel');
              },
                  child: Text('取消'),),
              FlatButton(
                  onPressed: (){
                    Toastd('确定');
                    Navigator.pop(context,'ok');
                  },
                  child: Text('确定'),),
            ],
          );
        }
    );
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("SwiperDemoPage"),
      ),
      body: Column(
        children: <Widget>[
            Container(
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Swiper(
                  itemBuilder: (BuildContext context,int index){
                    return new Image.network(imglist[index]['url'],fit:BoxFit.fill);
                  },
                  itemCount: imglist.length,
                  pagination: new SwiperPagination(),
                  loop: true,
                  autoplay: true,
                  control: new SwiperControl(),
                ),
              ),
            ),
          SizedBox(height: 20,),
          RaisedButton(
              child: Text('alterDialog'),
              onPressed: (){
                _alterDialog();
              }),
          SizedBox(height: 10,),
          RaisedButton(
              child: Text('simpleDialog'),
              onPressed: (){
                _simpleDialog();
              }),
          SizedBox(height: 10,),
          RaisedButton(
              child: Text('modelBottomSheet'),
              onPressed: (){
                _modelBottomSheet();
              }),
          SizedBox(height: 10,),
          RaisedButton(
              child: Text('Mydialog'),
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return MyDialog(title:'哈哈',content:'good');
                });
              }),
        ],
      ),

    );
  }

  _simpleDialog() async{
    var result = await showDialog(
        context: context,
        builder: (context){
          return SimpleDialog(
            title: Text('选择内容'),
            children: <Widget>[
                SimpleDialogOption(
                  child: Text('OPTION A'),
                  onPressed: (){
                    Toastd('A');
                    Navigator.pop(context,'AA');
                  },
                ),
              Divider(),
                SimpleDialogOption(
                  child: Text('OPTION B'),
                  onPressed: (){
                    Toastd('B');
                    Navigator.pop(context,'BB');
                  },
                ),
              Divider(),
                SimpleDialogOption(
                  child: Text('OPTION C'),
                  onPressed: (){
                    Toastd('C');
                    Navigator.pop(context,'CC');
                  },
                ),
              Divider(),

            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async{

    var result = await showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: 300,
            child: Column(
              children: <Widget>[
                  ListTile(
                    title: Text('分享A'),
                    onTap: (){
                      Toastd('share A');
                      Navigator.pop(context,'Aaa');
                    },
                  ),
                Divider(),
                ListTile(
                    title: Text('分享B'),
                    onTap: (){
                      Toastd('share B');
                      Navigator.pop(context,'BBBB');
                    },
                  ),
                Divider(),
                ListTile(
                    title: Text('分享C'),
                    onTap: (){
                      Toastd('share C');
                      Navigator.pop(context,'CCCC');
                    },
                  ),
                Divider(),
              ],
            ),
          );
        });
  }
}


