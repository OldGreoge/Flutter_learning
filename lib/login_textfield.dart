import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login_textfield extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    String _accountValue="";
    String _pwdValue="";
    TextEditingController _accountController;
    _accountController=TextEditingController.fromValue(TextEditingValue(
        text: _accountValue,
        selection: TextSelection.fromPosition(
            TextPosition(offset: _accountValue.length)
        )
    )
    );

    void checkSubmitEnable() {
      setState((){
        var submitEnable=_accountValue.isNotEmpty&&_pwdValue.isNotEmpty;
      });
    }
    return TextField(
      controller: _accountController,
      keyboardType: TextInputType.number,
      inputFormatters: [WhitelistingTextInputFormatter(RegExp('[0-9]'))],
      decoration: InputDecoration(
        fillColor: Colors.blue,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.all(Radius.circular(100))
        ),
        hintText: '手机/邮箱',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlue),
          borderRadius: BorderRadius.all(Radius.circular(100))
        ),
        suffixIcon: _accountValue.isEmpty
          ?null:IconButton(
            icon: Icon(Icons.clear),
            color: Color(0xFFcccccc),
            iconSize: 16,
            onPressed: (){
                setState((){
                  _accountValue='';
                  checkSubmitEnable();
                 });
            }
          ),
      ),
      textAlign: TextAlign.center,
      onChanged: (value){
        setState((){
          _accountValue=value;
          checkSubmitEnable();
        });
      },
    );
  }

  void setState(Null Function() param0) {}

}