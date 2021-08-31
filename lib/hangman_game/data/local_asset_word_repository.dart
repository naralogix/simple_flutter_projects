import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:simple_flutter_projects/hangman_game/logic/word_repository.dart';

class LocalAssetWordRepository implements WordRepository {
  final String _datafile = '4000-most-common-english-words.txt';
  final List<String> _wordList = [];
  final Random _random = Random();

  @override
  Future<List<String>> getWordList() async {
    final String data =
        await rootBundle.loadString('assets/hangman_game/$_datafile');
    const LineSplitter().convert(data).forEach((word) {
      _wordList.add(word);
    });
    return _wordList;
  }

  @override
  Future<String> getRandomWord() async {
    if (_wordList.isEmpty) {
      await getWordList();
    }
    return _wordList[_random.nextInt(_wordList.length)];
  }
}
