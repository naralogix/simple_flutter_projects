import 'package:flutter/material.dart';

class MysteryLetterBlock extends StatelessWidget {
  const MysteryLetterBlock({
    Key? key,
    required this.letter,
    this.side = 40.0,
    this.onTap,
    this.letterColor = Colors.black54,
    this.altStyle = false,
  }) : super(key: key);

  final String letter;
  final double side;
  final VoidCallback? onTap;
  final Color? letterColor;
  final bool altStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: side,
      width: side,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(2.0),
      child: Text(letter,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: letterColor)),
      decoration: altStyle
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Colors.green,
              border: Border.all(
                width: 2.0,
                color: Colors.black54,
              ),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Colors.yellow[200],
              border: Border.all(
                width: 2.0,
                color: Colors.black54,
              ),
            ),
    );
  }
}
