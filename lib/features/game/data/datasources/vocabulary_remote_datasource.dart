import 'package:hangman_english_learn/features/game/data/models/vocabulary_model.dart';

abstract class VocabularyRemoteDataSource {
  /// Calls the API to get the default vocabulary.
  Future<List<VocabularyModel>> getDefaultVocabulary();
}

// class VocabularyRemoteDataSourceImpl implements VocabularyRemoteDataSource {
//   @override
//   Future<List<VocabularyModel>> getDefaultVocabulary() {
    
//   }
// }