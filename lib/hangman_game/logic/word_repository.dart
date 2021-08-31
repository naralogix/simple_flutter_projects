import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/data/local_asset_word_repository.dart';

final wordRepositoryProvider =
    Provider<WordRepository>((_) => LocalAssetWordRepository());

abstract class WordRepository {
  Future<String> getRandomWord();
  Future<List<String>> getWordList();
}
