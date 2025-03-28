import 'package:hangman_english_learn/core/error/failures.dart';
import 'package:hangman_english_learn/features/game/domain/entities/vocabulary.dart';

abstract class VocabularyRepository {
  Future<(Failure?, List<Vocabulary>?)> getDefaultVocabulary();
}
