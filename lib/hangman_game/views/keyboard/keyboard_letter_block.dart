import 'package:flutter/material.dart';
import 'package:simple_flutter_projects/hangman_game/logic/letter_block_status.dart';
import 'package:simple_flutter_projects/hangman_game/views/letter_block/letter_block.dart';

class KeyboardLetterBlock extends StatelessWidget {
  const KeyboardLetterBlock({
    Key? key,
    required this.letter,
    this.onTap,
    this.status = LetterBlockStatus.none,
  }) : super(key: key);

  final String letter;
  final VoidCallback? onTap;
  final LetterBlockStatus status;

  @override
  Widget build(BuildContext context) {
    if (status == LetterBlockStatus.wrongAns) {
      return LetterBlock(
        side: 40,
        letter: letter,
        onTap: onTap,
        cardColor: Colors.redAccent,
        letterColor: Colors.white,
      );
    } else if (status == LetterBlockStatus.rightAns) {
      return LetterBlock(
        side: 40,
        letter: letter,
        onTap: onTap,
        cardColor: Colors.green,
        letterColor: Colors.white,
      );
    } else {
      return LetterBlock(
        side: 40,
        letter: letter,
        onTap: onTap,
      );
    }
  }
}
