import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/views/hangman_page.dart';
import 'package:simple_flutter_projects/hangman_game/views/mystery_word_display/animated_mystery_letter_block.dart';

class MysteryWordDisplay extends ConsumerWidget {
  const MysteryWordDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final mysteryWord = watch(currentMysteryWord);
    return Wrap(
      // alignment: WrapAlignment.start,
      children: List.generate(
        mysteryWord.length,
        (int index) {
          final letter = mysteryWord[index];
          return AnimatedMysteryLetterBlock(letter: letter);
        },
      ),
    );
  }
}
