import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  RectangularButton(
      {required this.color,
      required this.textColor,
      required this.title,
      required this.onPressed});

  final String title;
  final Function onPressed;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          '$title',
          style: TextStyle(
            color: textColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          side: BorderSide(width: 1.0, color: textColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // <-- Radius
          ),
        ),
      ),
    );
  }
}
