import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      child: const Scaffold(
          backgroundColor: Colors.transparent,
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
        height: 50,
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
