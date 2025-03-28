import 'package:hangman_english_learn/core/error/failures.dart';
import 'package:hangman_english_learn/features/game/domain/entities/vocabulary.dart';
import 'package:hangman_english_learn/features/game/domain/repositories/vocabulary_repository.dart';

class GetDefaultVocabularyUseCase {
  final VocabularyRepository repository;

  GetDefaultVocabularyUseCase({required this.repository});

  /// This method is called automatically when the use case is invoked
  Future<(Failure?, List<Vocabulary>?)> call() {}
}
