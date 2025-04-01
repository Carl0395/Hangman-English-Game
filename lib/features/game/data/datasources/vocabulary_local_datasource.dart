import 'package:flutter/foundation.dart';
import 'package:hangman_english_learn/core/error/failures.dart';
import 'package:hangman_english_learn/features/game/data/models/vocabulary_model.dart';
import 'package:hangman_english_learn/features/game/domain/entities/vocabulary.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class VocabularyLocalDataSource {
  Future<bool> saveVocabulary(List<Vocabulary> vocabulary);
  Future<List<VocabularyModel>> getDefaultVocabulary();
}

class HiveVocabularyLocalDataSourceImpl implements VocabularyLocalDataSource {
  HiveVocabularyLocalDataSourceImpl() {
    Hive.initFlutter();
  }

  @override
  Future<bool> saveVocabulary(List<Vocabulary> vocabulary) async {
    try {
      // Se crea la caja una sola vez
      Box<dynamic> box = await Hive.openBox('vocabulary');

      box.put('default_vocabulary', vocabulary);
      return true;
    } catch (e, stack) {
      debugPrint('${e.toString()} \n$stack');
      throw LocalFailure(e.toString());
    }
  }

  @override
  Future<List<VocabularyModel>> getDefaultVocabulary() async {
    try {
      return [];
    } catch (e, stack) {
      debugPrintStack(stackTrace: stack, label: e.toString());
      throw LocalFailure(e.toString());
    }
  }
}
