import 'package:hangman_english_learn/features/game/domain/entities/vocabulary.dart';

class VocabularyModel extends Vocabulary {
  VocabularyModel({
    required super.id,
    required super.word,
    required super.translation,
  });

  factory VocabularyModel.fromJson(Map<String, dynamic> json) {
    return VocabularyModel(
      id: json['id'],
      word: json['word'],
      translation: json['translation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'word': word, 'translation': translation};
  }
}
