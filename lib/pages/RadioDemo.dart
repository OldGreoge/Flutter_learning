import 'package:flutter/material.dart';
import 'package:flutter_app/plugin/ToastDemo.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var test=1;
  var sex=1;
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
              Row(
                children: <Widget>[
                    Text("男"),
                    Radio(
                        value: 1,
                        groupValue: sex,
                        onChanged: (v){
                          setState(() {
                            sex=v;
                            Toastd("性别：男");
                          });
                        }
                    ),
                    SizedBox(width: 20,),
                    Text("女"),
                    Radio(
                        value: 2,
                        groupValue: sex,
                        onChanged: (v){
                          setState(() {
                            sex=v;
                            Toastd("性别：女");
                          });
                        }
                    ),
                ],
              ),
              Divider(),
              RadioListTile(
                  value: 1,
                  groupValue: test,
                  onChanged: (v){
                    setState(() {
                      test=v;
                    });
                  },
                  title: Text('1级标题'),
                  subtitle: Text('2级标题2级标题'),
                  secondary: Icon(Icons.help),
                  selected: test==1,
              ),
              RadioListTile(
                  value: 2,
                  groupValue: test,
                  onChanged: (v){
                    setState(() {
                      test=v;
                    });
                  },
                  title: Text('3级标题'),
                  subtitle: Text('4级标题444444'),
                  secondary: Icon(Icons.flag),
                  selected: test==2,
              ),
              RadioListTile(
                  value: 3,
                  groupValue: test,
                  onChanged: (v){
                    setState(() {
                      test=v;
                    });
                  },
                  title: Text('5级标题'),
                  subtitle: Text('6级标题66666666'),
                  secondary: Icon(Icons.title),
                  selected: test==3,
              ),
              Divider(),
              Switch(
                  value: flag,
                  onChanged: (v){
                    setState(() {
                      flag=v;
                      Toastd(flag?"选中":"未选中");
                    });
              }),
          ],
        ),
    );
  }
}
