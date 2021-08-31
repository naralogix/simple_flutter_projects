import 'package:freezed_annotation/freezed_annotation.dart';

part 'hangman_page_state.freezed.dart';

@freezed
class HangmanPageState with _$HangmanPageState {
  const factory HangmanPageState.loading() = HangmanPageStateLoading;
  const factory HangmanPageState.error(String message) = HangmanPageStateError;
  const factory HangmanPageState.gameOn({
    required String misteryWord,
    required int round,
    @Default(<String>[]) List<String> pressedKeyList,
    @Default(6) int lives,
    @Default(false) bool mysteryWordCompleted,
  }) = HangmanPageStateGameOn;
  const factory HangmanPageState.gameOver() = HangmanPageStateGameOver;
}
