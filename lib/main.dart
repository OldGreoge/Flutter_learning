import 'package:flutter/material.dart';
import 'package:flutter_app/carddemo.dart';
import 'package:flutter_app/coDemo.dart';
import 'package:flutter_app/data_type.dart';
import 'package:flutter_app/material_sty_widget.dart';
import 'package:flutter_app/pages/search.dart';
import 'package:flutter_app/statefull_group_page.dart';
import 'package:flutter_app/statefulwidgetDemo.dart';
import 'package:flutter_app/tabs.dart';
import 'package:flutter_app/wrapDemo.dart';

import 'Routes/routes.dart';
import 'gridview_learn.dart';
import 'listview_learn.dart';
import 'listviewapp.dart';
import 'Login/login.dart';
import 'paddingDemo.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Tabs(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
