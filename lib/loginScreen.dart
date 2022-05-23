// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_homework_1/View/SnsButton.dart';
import 'View/BottomAppBar.dart';
import 'View/Checkbox.dart';
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
          body: Column(
            children: <Widget>[
              SignInTopView(),
              const Text(
                'SIGN IN',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: TextStyle(color: Color.fromRGBO(243, 177, 174, 1), fontSize: 20),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Color.fromRGBO(243, 177, 174, 1), fontSize: 20),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    MyCheckBox(),
                    Text(
                      "Remember password",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 315,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("GET STARTED"),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),))),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SNSButton(imageName: 'fb.png',),
                  SizedBox(width: 20,),
                  SNSButton(imageName: 'twitter.png')
                ],
              )
            ],
          ),
          bottomNavigationBar: MyBottomAppBar()),
    );
  }
}
