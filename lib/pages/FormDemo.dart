import 'package:flutter/material.dart';
import 'package:flutter_app/plugin/ToastDemo.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key key}) : super(key: key);

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  List hobby =[{"title":"打篮球","checked":true},
               {"title":"玩游戏","checked":false},
                {"title":"旅游","checked":true},];
  String _username;
  int sex=1;
  bool _flag=true;

  List<Widget> _getHobby(){
    List<Widget> tempList=[];
    for(var i=0;i<hobby.length;i++){
      tempList.add(
        Row(
          children: <Widget>[
              Text(hobby[i]['title']+":"),
              Checkbox(
                  value: hobby[i]['checked'],
                  onChanged: (v){
                    setState(() {
                      hobby[i]["checked"]=v;
                    });
                  }
              ),
          ],
        ),
      );
    }
    return tempList;
  }
  
  String _getstring(List list){
    String txt="";
    for(var i=0;i<list.length;i++){
      if(list[i]['checked']) txt+=list[i]['title']+',';
    }
    return txt;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户信息",
                labelText: "用户名",
              ),
              onChanged: (v){
                setState(() {
                  _username=v;
                });
              },
            ),
            Row(
              children: <Widget>[
                  Text("男"),
                  Radio(
                    value: 1,
                    onChanged: (v){
                      setState(() {
                        sex=v;
                      });
                    },
                    groupValue: sex,
                  ),
                  SizedBox(width: 20,),
                  Text("女"),
                  Radio(
                    value: 2,
                    onChanged: (v){
                      setState(() {
                        sex=v;
                      });
                    },
                    groupValue: sex,
                  ),
              ],
            ),
            SizedBox(height: 10,),
            Wrap(children: _getHobby(),),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Switch(
                      value: _flag,
                      onChanged: (v){
                        setState(() {
                          _flag=v;
                        });
                      }),
                  Text('是否同意接受条款'),
                ],
              ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('提交信息'),

                onPressed: _flag?(){
                  Toastd("注册用户名：$_username，\n性别为：${sex==1?"男":"女"} \n兴趣为:${_getstring(hobby)}");
                }:null,
                color: Colors.cyan,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
    );
  }
}
