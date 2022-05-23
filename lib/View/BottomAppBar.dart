import 'package:flutter/material.dart';

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