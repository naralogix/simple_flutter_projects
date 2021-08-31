import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/logic/hangman_page_state_notifier.dart';
import 'package:simple_flutter_projects/hangman_game/logic/letter_block_status.dart';

final keyboardStatusProvider =
    ProviderFamily<LetterBlockStatus, String>((ref, letter) {
  final hangmanPageState = ref.watch(hangmanPageStateNotifierProvider);
  return hangmanPageState.maybeWhen(
      gameOn: (mysteryWord, _, pressedKeyList, __, ___) {
        if (pressedKeyList.contains(letter)) {
          if (mysteryWord.contains(letter)) {
            return LetterBlockStatus.rightAns;
          } else {
            return LetterBlockStatus.wrongAns;
          }
        } else {
          return LetterBlockStatus.none;
        }
      },
      orElse: () => LetterBlockStatus.none);
});

final mysteryWordStatusProvider =
    ProviderFamily<LetterBlockStatus, String>((ref, letter) {
  final hangmanPageState = ref.watch(hangmanPageStateNotifierProvider);
  return hangmanPageState.maybeWhen(
    loading: () => LetterBlockStatus.masked,
    gameOn: (mysteryWord, _, pressedKeyList, lives, mysteryWordCompleted) {
      if (lives == 0) {
        return LetterBlockStatus.shown;
      }
      if (pressedKeyList.contains(letter)) {
        return LetterBlockStatus.shown;
      } else {
        return LetterBlockStatus.masked;
      }
    },
    orElse: () => LetterBlockStatus.masked,
  );
});
