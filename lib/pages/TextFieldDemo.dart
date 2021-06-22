import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  var username=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    username.text='初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextFieldDemoPage'),),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
              TextField(),
              SizedBox(),
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
                  onPressed: (){

                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                maxLines: 4,
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
          ],
        ),
      ),
    );
  }
}
