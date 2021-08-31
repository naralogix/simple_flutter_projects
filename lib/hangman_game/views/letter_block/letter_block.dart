import 'package:flutter/material.dart';

class LetterBlock extends StatelessWidget {
  const LetterBlock({
    Key? key,
    required this.letter,
    this.side = 30.0,
    this.onTap,
    this.cardColor,
    this.letterColor,
  }) : super(key: key);
  final String letter;
  final double side;
  final VoidCallback? onTap;
  final Color? cardColor;
  final Color? letterColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: cardColor,
        child: SizedBox(
          width: side,
          height: side,
          child: Center(
            child: Text(letter, style: TextStyle(color: letterColor)),
          ),
        ),
      ),
    );
  }
}
