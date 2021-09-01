import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/views/hangman_page.dart';
import 'package:simple_flutter_projects/hangman_game/views/lives/lives.dart';
import 'package:simple_flutter_projects/hangman_game/views/mystery_word_display/mystery_word_display.dart';

class GameDisplay extends StatelessWidget {
  const GameDisplay({
    Key? key,
    required this.mysteryWordCompleted,
    required this.round,
    required this.lives,
    required this.mysteryWord,
  }) : super(key: key);

  final bool mysteryWordCompleted;
  final int round;
  final int lives;
  final String mysteryWord;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      child: mysteryWordCompleted
          ? Container()
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 48.0),
                Text('Round $round',
                    style: Theme.of(context).textTheme.headline5),
                const SizedBox(height: 48.0),
                Lives(lives),
                const SizedBox(height: 96.0),
                ProviderScope(
                  overrides: [
                    currentMysteryWord.overrideWithValue(mysteryWord)
                  ],
                  child: const MysteryWordDisplay(),
                ),
              ],
            ),
    );
  }
}
