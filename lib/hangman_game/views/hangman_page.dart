import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/logic/hangman_page_state.dart';
import 'package:simple_flutter_projects/hangman_game/logic/hangman_page_state_notifier.dart';
import 'package:simple_flutter_projects/hangman_game/views/game_display/game_display.dart';
import 'package:simple_flutter_projects/hangman_game/views/game_over/game_over.dart';
import 'package:simple_flutter_projects/hangman_game/views/keyboard/keyboard.dart';

final currentMysteryWord = ScopedProvider<String>(null);

class HangmanPage extends StatelessWidget {
  HangmanPage({Key? key}) : super(key: key);

  static const String title = 'Hangman Game';
  static const List<String> _successMessages = [
    'Nice!',
    'Keep going!',
    "You're good on this!",
    'Very good!',
    "You're on the roll!",
  ];
  final _random = Random();

  void _getNextWord(BuildContext context, HangmanPageState hangmanPageState) {
    if (hangmanPageState is HangmanPageStateGameOn &&
        hangmanPageState.mysteryWordCompleted) {
      final message =
          _successMessages[_random.nextInt(_successMessages.length)];
      final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: Text(message),
        duration: const Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Future.delayed(const Duration(seconds: 2)).then((_) {
        context.read(hangmanPageStateNotifierProvider.notifier).nextWord();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      provider: hangmanPageStateNotifierProvider,
      onChange: _getNextWord,
      child: Scaffold(
        appBar: AppBar(title: const Text('Hangman Game')),
        body: Consumer(builder: (context, watch, child) {
          final hangmanPageState = watch(hangmanPageStateNotifierProvider);
          return hangmanPageState.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (errorMessage) => Center(child: Text(errorMessage)),
            gameOver: () => const GameOver(),
            gameOn: (mysteryWord, round, keyPressedList, lives,
                mysteryWordCompleted) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GameDisplay(
                    mysteryWord: mysteryWord,
                    round: round,
                    lives: lives,
                    mysteryWordCompleted: mysteryWordCompleted,
                  ),
                  const Keyboard(),
                ],
              );
            },
          );
        }),
      ),
    );
  }
}
