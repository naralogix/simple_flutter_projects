import 'dart:developer' as dev;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/logic/word_repository.dart';

import 'hangman_page_state.dart';

final hangmanPageStateNotifierProvider =
    StateNotifierProvider<HangmanPageStateNotifier, HangmanPageState>((ref) {
  return HangmanPageStateNotifier(ref)..nextWord();
});

class HangmanPageStateNotifier extends StateNotifier<HangmanPageState> {
  HangmanPageStateNotifier(this._ref) : super(const HangmanPageState.loading());
  final ProviderReference _ref;

  Future<void> nextWord() async {
    final wordRepository = _ref.read(wordRepositoryProvider);
    try {
      final mysteryWord = await wordRepository.getRandomWord();
      dev.log('Psst... mystery word is $mysteryWord');
      if (state is! HangmanPageStateGameOn) {
        state = HangmanPageState.gameOn(
            misteryWord: mysteryWord.toUpperCase(), round: 1);
      } else {
        final _state = state as HangmanPageStateGameOn;
        final _round = _state.round + 1;
        state = HangmanPageState.gameOn(
            misteryWord: mysteryWord.toUpperCase(), round: _round);
      }
    } on Exception catch (e) {
      state = HangmanPageState.error(e.toString());
    }
  }

  void keyPressed(String letter) {
    if (state is HangmanPageStateGameOn) {
      final _state = state as HangmanPageStateGameOn;
      final List<String> updatedPressedKeyList = [
        ..._state.pressedKeyList,
        letter
      ];

      if (_state.misteryWord.contains(letter)) {
        state = _state.copyWith(pressedKeyList: updatedPressedKeyList);
        if (_isMysteryWordCompleted()) {
          state = _state.copyWith(
            mysteryWordCompleted: true,
            pressedKeyList: updatedPressedKeyList,
          );
        }
      } else {
        final int updatedLives = _state.lives - 1;
        state = _state.copyWith(
          pressedKeyList: updatedPressedKeyList,
          lives: updatedLives,
        );
        if (updatedLives == 0) {
          Future.delayed(const Duration(milliseconds: 1400), () {
            state = const HangmanPageStateGameOver();
          });
        }
      }
    }
  }

  bool _isMysteryWordCompleted() {
    final _state = state as HangmanPageStateGameOn;
    final mysteryWordAsList = <String>[];
    _state.misteryWord.split('').forEach((letter) {
      mysteryWordAsList.add(letter);
    });
    for (final String letter in mysteryWordAsList) {
      if (!_state.pressedKeyList.contains(letter)) {
        return false;
      }
    }
    return true;
  }
}
