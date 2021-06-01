
import 'package:flutter/widgets.dart';

class dataType extends StatefulWidget {
  const dataType({Key key}) : super(key: key);

  @override
  _dataTypeState createState() => _dataTypeState();
}

class _dataTypeState extends State<dataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    _boolTpye();
    _listTpye();
    _mapTpye();

    return Container(child: Text('请查看控制台'),);
  }

  void _numType() {
    num num1 = 3;
    print("num1=$num1");
    int i = 4;
    double d = 4.4;
    print("num1+i=" + (i + num1).toString());
    print((num1 * (-1)).abs());
    print(d.toInt());
  }

  void _stringType() {
    String str1 = '字符串1',
        str2 = '字符串2';
    String str3 = "$str1+$str2";
    print("str3=$str3");
    print(str3.substring(4, 7));
    print(str3.indexOf('串'));
  }

  void _boolTpye() {
    bool success = true;
    print(!success);
  }

  void _listTpye() {
    List list1 = [1, 3, 4, 'hello'];
    List list2 = [];
    list2.addAll(list1);
    print(list2);
    List list3 = List.generate(5, (index) => index * 6);
    print(list3);

    for (int i = 0; i < list3.length; i++) {
      print(list3[i]);
    }
    
    list3.forEach((V) {
      print(V*2);
    });
  }

  void _mapTpye() {
    print("------");
    Map names={01:'xiaomin',02:'xiaohong'};
    print(names);
    Map ages={};
    ages[01]=16;
    ages[02]=18;
    print(ages);
    names.forEach((key, value) {
      print('$key,$value');

    });

    Map person = names.map((key, value)=> MapEntry(value,ages[key]));
    print(person);

    for(var key in person.keys) {
      print(person.containsKey(key));
    }
  }
}