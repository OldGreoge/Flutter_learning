

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/appbarDemo.dart';
import 'package:flutter_app/pages/search.dart';
import 'package:flutter_app/pages/searchDetail.dart';
import 'package:flutter_app/pages/swiperDemo.dart';

import '../carddemo.dart';
import '../main.dart';
import '../statefulwidgetDemo.dart';

final routes = {
  '/swiper':(context)=>SwiperDemo(),
  '/appbar':(context)=>appbarDemo(),
  '/sfwDemo': (context) => sfwDemo(),
  '/cardDemo': (context) => cardDemo(),
  '/cardAspectRatioDemo': (context) => cardAspectRatioDemo(),
  '/search': (context, {arguments}) => searchPage(arguments: arguments),
  '/main': (context) => MyApp(),
  '/searchdetail':(context,{arguments})=>searchDetailPage(arguments: arguments),
};

RouteFactory onGenerateRoute = (RouteSettings settings) {
  Route route;
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
    } else {
      route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    }
  }
  return route;
};
