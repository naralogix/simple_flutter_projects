import 'package:flutter/material.dart';
import 'package:simple_flutter_projects/hangman_game/views/mystery_word_display/mystery_letter_block.dart';

class ShownLetter extends MysteryLetterBlock {
  const ShownLetter(String letter)
      : super(
          letter: letter,
          letterColor: Colors.black,
          altStyle: true,
        );
}
