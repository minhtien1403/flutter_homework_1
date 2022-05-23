// ignore: file_names
import 'package:flutter/material.dart';

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
              Text(
                'SIGN IN',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              Row(
                children: [
                  MyCheckBox(),
                ],
              )
            ],
          ),
          bottomNavigationBar: MyBottomAppBar()),
    );
  }
}

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromRGBO(202, 31, 81, 1),
      child: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('DONT HAVE AN ACCOUNT?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(240, 108, 70, 1),
                    fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: null,
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}

class SignInTopView extends StatelessWidget {
  const SignInTopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 50)),
        const Image(
          image: AssetImage('assets/images/logo.png'),
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "CONN",
              style: TextStyle(
                  fontSize: 34, color: Color.fromRGBO(253, 39, 117, 1)),
            ),
            Text("EXION", style: TextStyle(fontSize: 34, color: Colors.white))
          ],
        ),
        const Text(
          "Find and Meet people around \n you to find love",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
      ],
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
