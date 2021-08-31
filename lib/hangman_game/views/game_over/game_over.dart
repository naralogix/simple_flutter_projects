import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter_projects/hangman_game/logic/hangman_page_state_notifier.dart';

class GameOver extends StatelessWidget {
  const GameOver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Game Over', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 48.0),
          TextButton(
            onPressed: () {
              context
                  .read(hangmanPageStateNotifierProvider.notifier)
                  .nextWord();
            },
            child: const Text('PLAY AGAIN'),
          ),
        ],
      ),
    );
  }
}
