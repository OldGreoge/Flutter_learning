import 'package:flutter/material.dart';
import 'package:flutter_app/pages/FormDemo.dart';

import 'RadioDemo.dart';

class tabbarDemo extends StatefulWidget {
  const tabbarDemo({Key key}) : super(key: key);

  @override
  _tabbarDemoState createState() => _tabbarDemoState();
}

class _tabbarDemoState extends State<tabbarDemo> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('TabBarControlerPage'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: [
            Tab(text: 'Form',),
            Tab(text: 'Radio',)
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
            Center(child: FormDemo(),),
            Center(child: RadioDemo(),),

        ],
      ),
    );
  }
}
