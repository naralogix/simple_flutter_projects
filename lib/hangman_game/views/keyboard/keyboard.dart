import 'package:flutter/material.dart';
import 'package:simple_flutter_projects/hangman_game/views/keyboard/keyboard_row.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  late final List<String> _alphabet;

  @override
  void initState() {
    super.initState();
    _alphabet =
        List<String>.generate(26, (int i) => String.fromCharCode(i + 65));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0),
      child: Column(
        children: <Widget>[
          KeyboardRow(alphabet: _alphabet, row: 0),
          KeyboardRow(alphabet: _alphabet, row: 1),
          KeyboardRow(alphabet: _alphabet, row: 2),
          KeyboardRow(alphabet: _alphabet, row: 3),
        ],
      ),
    );
  }
}
