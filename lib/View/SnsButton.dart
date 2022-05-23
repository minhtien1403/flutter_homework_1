import 'package:flutter/material.dart';

class SNSButton extends StatelessWidget {
  const SNSButton({Key? key, required this.imageName}) : super(key: key);
  final String imageName;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      height: 68,
      child: ElevatedButton(
        onPressed: () {},
        child: Image(image: AssetImage('assets/images/$imageName')),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(34)))),
      ),
    );
  }
}
