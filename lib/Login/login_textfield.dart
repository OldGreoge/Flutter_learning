import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login_textfield extends StatefulWidget {
  const login_textfield({Key key}) : super(key: key);

  @override
  _login_textfieldState createState() => _login_textfieldState();
}

class _login_textfieldState extends State<login_textfield> {
  String _accountValue='';
  TextEditingController _accountController=TextEditingController.fromValue(TextEditingValue(
      text: _accountValue,
      selection: TextSelection.fromPosition(
          TextPosition(offset: _accountValue.length)
        )
      ));

  void checkSubmitEnable(){
    setState(() {
      submitEnable=_accountValue.isNotEmpty&&_pwdValue.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _accountController,
      keyboardType: TextInputType.number,
      inputFormatters: [WhitelistingTextInputFormatter(RegExp('[0-9A-Za-z]'))],
      decoration: InputDecoration(
        fillColor: Color(0x30cccccc),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0x00ff0000)),
          borderRadius: BorderRadius.all(Radius.circular(100))
        ),
        hintText: '手机号/邮箱',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0x00000000)),
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        suffixIcon: _accountValue.isEmpty?null
            :IconButton(
              icon: Icon(Icons.clear),
              color: Color(0xffcccccc),
              iconSize: 16,
              onPressed: (){
                _accountValue='';
                checkSubmitEnable();
              }),
      ),
    );
  }
}
