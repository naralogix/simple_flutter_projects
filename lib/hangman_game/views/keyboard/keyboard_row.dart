import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/logic/hangman_page_state_notifier.dart';
import 'package:simple_flutter_projects/hangman_game/logic/status_providers.dart';
import 'package:simple_flutter_projects/hangman_game/views/keyboard/keyboard_letter_block.dart';

class KeyboardRow extends StatelessWidget {
  const KeyboardRow({
    Key? key,
    required this.alphabet,
    required this.row,
  }) : super(key: key);

  final List<String> alphabet;
  final int row;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        row == 3 ? 5 : 7,
        (int index) {
          final letter = alphabet[index + 7 * row];
          return Consumer(builder: (context, watch, child) {
            final _keyStatus = watch(keyboardStatusProvider(letter));
            return KeyboardLetterBlock(
              letter: letter,
              status: _keyStatus,
              onTap: () {
                context
                    .read(hangmanPageStateNotifierProvider.notifier)
                    .keyPressed(letter);
              },
            );
          });
        },
      ),
    );
  }
}
