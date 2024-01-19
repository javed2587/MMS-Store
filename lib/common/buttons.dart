import 'package:flutter/material.dart';

class MyCustomeButtons extends StatelessWidget {
  const MyCustomeButtons(
      {super.key, required this.buttonText, required this.onTap});

  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap;
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 243, 101, 6),
        backgroundColor: Color.fromARGB(255, 235, 233, 232),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(buttonText),
    );
  }
}
