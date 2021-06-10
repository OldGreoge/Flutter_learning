import 'package:flutter/material.dart';

class rowDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Expanded(
            child: IconContainer(Icons.search,color:Colors.yellow),
            flex:1,
        ),
        Expanded(
            child: IconContainer(Icons.home,color:Colors.red),
            flex:2,
        ),
        Expanded(
            child: IconContainer(Icons.ac_unit,color:Colors.cyan),
            flex:1,
        ),
      ],
    );

  }
}

class IconContainer extends StatelessWidget{
  double size=32;
  Color color=Colors.red;
  IconData icon;


  IconContainer(this.icon,{this.color,this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: this.color,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Center(
        child: Icon(this.icon,size:this.size,color: Colors.white),
      ),
    );
  }

}

class columnDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(child:
            Container(
              height: 200,
              color: Colors.black,
              child: Center(child: Text('HelloWorld!',style: TextStyle(fontSize:32,color: Colors.white),),),
            ), ),
           ],
          ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 180,
                    child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
                  ),
              ),
              SizedBox(width: 10,),
              Expanded(
                  flex: 1,
                  child:
                    // Container(
                    //   height: 85,
                    //    child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,)
                    // ),
                  ListView(
                    children: <Widget>[
                        Container(
                            height: 85,
                            child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,)
                        ),
                        SizedBox(height: 10,),
                        Container(
                            height: 85,
                            child: Image.network('https://www.itying.com/images/flutter/4.png',fit:BoxFit.cover)
                        ),
                    ],
                  )
              ),
          ],
        )
      ],
    );
  }

}