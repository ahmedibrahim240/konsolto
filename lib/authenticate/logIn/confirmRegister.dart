import 'dart:async';

import 'package:flutter/material.dart';
import 'package:konsolto/authenticate/logIn/getUserData.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:code_fields/code_fields.dart';
import 'package:konsolto/wrapper/wrapper.dart';

class ConfirmPassword extends StatefulWidget {
  @override
  _ConfirmPasswordState createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final _formKey = GlobalKey<FormState>();
  final int codeLength = 6;
  int timer;

  String validateCode(String code) {
    if (code.length < codeLength)
      return "من فضلك اكمل الكود";
    else {
      bool isNumeric = int.tryParse(code) != null;
      if (!isNumeric) return "برجاء ادخال الكود المرسل";
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 60),
      () {
        setState(() {
          timer = 60;
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customColor,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: ListView(
          primary: true,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/images/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    spaceH(30),
                    Center(
                      child: Text(
                        "Enter code sent to you to verify your account click on" +
                            '\n Resend if you didn\'t receive SMS in 0:53',
                        textAlign: TextAlign.center,
                        style: AppTheme.subHeading.copyWith(),
                      ),
                    ),
                    spaceH(30),
                    Center(
                      child: CodeFields(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        fieldWidth: 45,
                        fieldHeight: 60,
                        inputDecoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                        length: codeLength,
                        validator: validateCode,
                        textStyle: TextStyle(color: Colors.black),
                        autofocus: true,
                      ),
                    ),
                    spaceH(20),
                    CustomButton(
                      text: 'Resend code',
                      onPress: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (_) => GitUserDate(),
                          ),
                          (routes) => false,
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
