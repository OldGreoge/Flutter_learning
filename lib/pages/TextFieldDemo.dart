import 'package:flutter/material.dart';
import 'package:flutter_app/plugin/ToastDemo.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  var username=TextEditingController();
  var _flag;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    username.text='初始值';
    _flag=true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: "请输入用户名",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                child: RaisedButton(
                  child: Text('登录'),
                  onPressed:(){Toastd('登录');}
                    // Fluttertoast.showToast(
                    //     msg: "txt",
                    //     toastLength: Toast.LENGTH_LONG,
                    //     gravity: ToastGravity.CENTER,  // 消息框弹出的位置
                    //     timeInSecForIosWeb: 1,  // 消息框持续的时间（目前的版本只有ios有效）
                    //     backgroundColor: Colors.red,
                    //     textColor: Colors.white,
                    //     fontSize: 16.0
                    // );
                    ,
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "多行文本框",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  labelText: "用户名",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "密码",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  icon:Icon(Icons.person),
                  hintText: "请输入用户名",
                ),
              ),
              SizedBox(height: 8,),
              Checkbox(
                value: _flag,
                onChanged: (v){
                  setState(() {
                    _flag=v;
                  });
                },
                activeColor: Colors.red,
              ),
              Text(_flag?"选中":"未选中"),
              Divider(),
              CheckboxListTile(
                value: _flag,
                onChanged: (v){
                  setState(() {
                    _flag=v;
                  });
                },
                title: Text('标题'),
                subtitle: Text('二级标题'),
                secondary: Icon(Icons.ac_unit),
              )
          ],
        ),
    );
  }
}
