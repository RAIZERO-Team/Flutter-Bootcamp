import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback action;

  const Button({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: ElevatedButton(
            onPressed: action,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: const Size(double.infinity, 60),
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
