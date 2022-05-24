import 'package:flutter/material.dart';
import 'Checkbox.dart';

class LoginInputView extends StatelessWidget {
  const LoginInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'SIGN IN',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter Email",
                hintStyle: TextStyle(
                    color: Color.fromRGBO(243, 177, 174, 1), fontSize: 20),
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
                hintText: "Password",
                hintStyle: TextStyle(
                    color: Color.fromRGBO(243, 177, 174, 1), fontSize: 20),
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
      ],
    );
  }
}
