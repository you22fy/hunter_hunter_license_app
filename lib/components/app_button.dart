import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({required this.onPressed, required this.text, super.key});

  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            color: Colors.amber.shade300,
            width: 1,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(120, 20),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.amber.shade900,
            ),
          )
        ],
      ),
    );
  }
}
