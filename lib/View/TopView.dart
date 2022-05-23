import 'package:flutter/material.dart';

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