import 'package:flutter/material.dart';
import 'package:flutter_homework_1/signUpScreen.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromRGBO(202, 31, 81, 1),
      child: Container(
          height: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('DONT HAVE AN ACCOUNT?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(240, 108, 70, 1),
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ],
          )),
    );
  }
}
