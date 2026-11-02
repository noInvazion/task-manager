import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback? onTap;

  const MyButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 30,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          // borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(buttonText)),
      ),
    );
  }
}
