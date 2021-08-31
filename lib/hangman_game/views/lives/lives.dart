import 'package:flutter/material.dart';
import 'package:simple_flutter_projects/hangman_game/views/lives/animated_live.dart';

class Lives extends StatelessWidget {
  const Lives(
    this.lives, {
    Key? key,
  }) : super(key: key);

  final int lives;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          6,
          (int index) {
            if (index == lives) {
              return const AnimatedLive();
            } else {
              return Icon(
                Icons.favorite,
                size: 36.0,
                color: index < lives ? Colors.redAccent : Colors.grey,
              );
            }
          },
        ));
  }
}
