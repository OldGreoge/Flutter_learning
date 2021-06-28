import 'package:flutter/material.dart';
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
            )
        ],
      ),

    );
  }
}
