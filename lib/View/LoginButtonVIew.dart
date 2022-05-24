import 'package:flutter/material.dart';

import 'SnsButton.dart';

class LoginButtonView extends StatelessWidget {
  const LoginButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 315,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ))),
            child: const Text(
              'GET STARTED',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            SNSButton(
              imageName: 'fb.png',
            ),
            SizedBox(
              width: 20,
            ),
            SNSButton(imageName: 'twitter.png')
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {},
            child: const Text("FORGOT PASSWORD",
                style: TextStyle(
                    shadows: [Shadow(color: Colors.white, offset: Offset(0, -1))],
                    color: Colors.transparent,
                    decorationThickness: 2,
                    decorationColor: Colors.white,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline)))
      ],
    );
  }
}
