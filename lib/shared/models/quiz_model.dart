import 'package:DevQuiz/shared/models/question_model.dart';

enum Level {
  facil,
  medio,
  dificil,
  perito,
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
}
