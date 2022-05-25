// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_homework_1/View/LoginButtonVIew.dart';
import 'package:flutter_homework_1/View/LoginInputView.dart';
import 'View/BottomAppBar.dart';
import 'View/TopView.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(255, 120, 69, 1),
            Color.fromRGBO(245, 50, 111, 1)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: const <Widget>[
            SignInTopView(),
            LoginInputView(),
            LoginButtonView()
          ],
        ),
        bottomSheet: MyBottomAppBar(),
      ),
    );
  }
}
