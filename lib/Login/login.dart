import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/plugin/ToastDemo.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:date_format/date_format.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String _accountValue = "";
  String _pwdValue = '';
  bool submitEnable = false;
  bool _obscurePwd = true;
  TextEditingController _pwdController;
  TextEditingController _accountController;
  DateTime _nowDate = DateTime.now();

  void _showDatepicker() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(2010, 3, 1),
      maxTime: DateTime(2022, 12, 30),
      onChanged: (date) {
        Toastd('chnage ${formatDate(date, [yyyy,'-',mm,'-',dd])}');
      },
      onConfirm: (date) {
        Toastd('confirm ${formatDate(date, [yyyy,'-',mm,'-',dd])}');
        setState(() {
          this._nowDate=date;
        });
      },
      currentTime: DateTime.now(),
      locale: LocaleType.zh,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Center(
            child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue),
          ),
          padding: EdgeInsets.all(10),
          child: FlutterLogo(
            size: 70,
          ),
        )),
        SizedBox(
          height: 40,
        ),
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
                borderRadius: BorderRadius.all(Radius.circular(100))),
            suffixIcon: _accountValue.isEmpty
                ? null
                : IconButton(
                    icon: Icon(Icons.clear),
                    iconSize: 16,
                    color: Color(0xffcccccc),
                    onPressed: () {
                      setState(() {
                        _accountValue = "";
                        checkSubmitEnable();
                      });
                    }),
            prefixIcon: _accountValue.isEmpty ? null : Icon(Icons.person),
          ),
          textAlign: TextAlign.center,
          onChanged: (v) {
            setState(() {
              _accountValue = v;
              checkSubmitEnable();
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _pwdController,
          decoration: InputDecoration(
              fillColor: Color(0x30cccccc),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x00000000)),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              hintText: '请输入密码',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x00000000)),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              suffixIcon: _pwdValue.isEmpty
                  ? null
                  : IconButton(
                      icon: Icon(Icons.clear),
                      color: Color(0xffcccccc),
                      iconSize: 16,
                      onPressed: () {
                        setState(() {
                          _pwdValue = "";
                          checkSubmitEnable();
                        });
                      }),
              prefixIcon: _pwdValue.isEmpty
                  ? null
                  : IconButton(
                      icon: _obscurePwd
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      color: Color(0xffcccccc),
                      iconSize: 16,
                      onPressed: () {
                        setState(() {
                          _obscurePwd = !_obscurePwd;
                        });
                      })),
          textAlign: TextAlign.center,
          obscureText: _obscurePwd,
          onChanged: (v) {
            setState(() {
              _pwdValue = v;
              checkSubmitEnable();
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("注册日期： "),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("${formatDate(_nowDate,[yyyy,'年',mm,'月',dd,'日'])}"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () {
                _showDatepicker();
              },
            )
          ],
        ),
      ],
    );
  }

  void checkSubmitEnable() {
    setState(() {
      submitEnable = _accountValue.isNotEmpty && _pwdValue.isNotEmpty;
    });

    _accountController = TextEditingController.fromValue(TextEditingValue(
        text: _accountValue,
        selection: TextSelection.fromPosition(
            (TextPosition(offset: _accountValue.length)))));

    _pwdController = TextEditingController.fromValue(TextEditingValue(
        text: _pwdValue,
        selection: TextSelection.fromPosition(
            (TextPosition(offset: _pwdValue.length)))));
  }
}


