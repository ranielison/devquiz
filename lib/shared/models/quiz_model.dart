import 'dart:convert';

import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get levelParse => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito,
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito",
      }[this]!;
}

class QuizModel {
  final String title;
  final int questionsAnswered;
  final String imagem;
  final Level level;
  final List<QuestionModel> questions;

  QuizModel({
    required this.title,
    this.questionsAnswered = 0,
    required this.imagem,
    required this.level,
    required this.questions,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questionsAnswered': questionsAnswered,
      'imagem': imagem,
      'level': level.parse,
      'questions': questions.map((x) => x.toMap()).toList(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    print('ok');
    return QuizModel(
      title: map['title'],
      questionsAnswered: map['questionsAnswered'],
      imagem: map['imagem'],
      level: map['level'].toString().levelParse,
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
