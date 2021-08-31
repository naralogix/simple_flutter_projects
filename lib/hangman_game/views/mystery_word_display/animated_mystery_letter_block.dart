import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/logic/letter_block_status.dart';
import 'package:simple_flutter_projects/hangman_game/logic/status_providers.dart';
import 'package:simple_flutter_projects/hangman_game/views/mystery_word_display/masked_letter.dart';
import 'package:simple_flutter_projects/hangman_game/views/mystery_word_display/shown_letter.dart';

class AnimatedMysteryLetterBlock extends ConsumerWidget {
  const AnimatedMysteryLetterBlock({Key? key, required this.letter})
      : super(key: key);
  final String letter;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final status = watch(mysteryWordStatusProvider(letter));
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      layoutBuilder: (widget, list) {
        final List<Widget> children = <Widget>[
          if (widget != null) widget,
          ...list
        ];
        return Stack(
          alignment: Alignment.center,
          children: children,
        );
      },
      transitionBuilder: (widget, animation) {
        final rotateAnimation =
            Tween(begin: math.pi, end: 0.0).animate(animation);
        return AnimatedBuilder(
          animation: rotateAnimation,
          builder: (context, child) {
            final isMasked = widget is MaskedLetter;
            final val = isMasked
                ? math.min(rotateAnimation.value, math.pi / 2)
                : rotateAnimation.value;
            return Transform(
              transform: Matrix4.rotationX(val),
              alignment: Alignment.center,
              child: widget,
            );
          },
          child: widget,
        );
      },
      child: status == LetterBlockStatus.masked
          ? const MaskedLetter()
          : ShownLetter(letter),
    );
  }
}








// class AnimatedMysteryLetterBlock extends StatelessWidget {
//   const AnimatedMysteryLetterBlock(
//       {Key? key, required this.letter, required this.status})
//       : super(key: key);
//   final String letter;
//   final LetterBlockStatus status;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       duration: const Duration(milliseconds: 400),
//       layoutBuilder: (widget, list) {
//         final List<Widget> children = <Widget>[
//           if (widget != null) widget,
//           ...list
//         ];
//         return Stack(
//           alignment: Alignment.center,
//           children: children,
//         );
//       },
//       transitionBuilder: (widget, animation) {
//         final rotateAnimation =
//             Tween(begin: math.pi, end: 0.0).animate(animation);
//         return AnimatedBuilder(
//           animation: rotateAnimation,
//           builder: (context, child) {
//             final isMasked = widget is MaskedLetter;
//             final val = isMasked
//                 ? math.min(rotateAnimation.value, math.pi / 2)
//                 : rotateAnimation.value;
//             return Transform(
//               transform: Matrix4.rotationX(val),
//               alignment: Alignment.center,
//               child: widget,
//             );
//           },
//           child: widget,
//         );
//       },
//       child: status == LetterBlockStatus.masked
//           ? const MaskedLetter()
//           : ShownLetter(letter),
//     );
//   }
// }
