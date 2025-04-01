import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hangman_english_learn/features/game/data/models/vocabulary_model.dart';

abstract class VocabularyRemoteDataSource {
  /// Calls the API to get the default vocabulary.
  Future<List<VocabularyModel>> getDefaultVocabulary();
}

class FirebaseVocabularyRemoteDataSourceImpl
    implements VocabularyRemoteDataSource {
  FirebaseFirestore db = FirebaseFirestore.instance;
  @override
  Future<List<VocabularyModel>> getDefaultVocabulary() async {
    final data = await db.collection('default_vocabulary').limit(20).get();
    if (data.docs.isNotEmpty) {
      return data.docs.map((e) => VocabularyModel.fromJson(e.data())).toList();
    }
    return [];
  }
}
