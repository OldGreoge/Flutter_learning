import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class loginPage extends StatefulWidget {

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String _accountValue="";
  bool submitEnable=false;
  TextEditingController _accountController=TextEditingController.fromValue(TextEditingValue(
  text: _accountValue,
    selection: TextSelection.fromPosition((TextPosition(offset: _accountValue.length)))
  ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100,),
        Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue),
              ),
              padding: EdgeInsets.all(10),
              child: FlutterLogo(size: 70,),
            )
        ) ,
        SizedBox(height:40,),
        TextField(
          controller: _accountController,
          keyboardType: TextInputType.number,
          inputFormatters: [WhitelistingTextInputFormatter(RegExp('[0-9]'))],
          decoration: InputDecoration(
            fillColor: Color(0x30cccccc),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00ff0000)),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            hintText: "手机号",
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x00000000)),
                borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            suffixIcon: _accountValue.isNotEmpty ?null
                :IconButton(
                icon: Icon(Icons.clear),
                iconSize: 16,
                color: Color(0xffcccccc),
                onPressed: (){
                  setState(() {
                    _accountValue="";
                    checkSubmitEnable();
                  });
                }),
          ),
          textAlign: TextAlign.center,
          onChanged: (v){
            setState(() {
              _accountValue=v;
              checkSubmitEnable();
            });
          },
        ),
      ],
    );
  }

  void checkSubmitEnable() {
    setState(() {
      submitEnable=_accountValue.isNotEmpty;
    });
  }
}




