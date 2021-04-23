import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(height: 24),
          AnswerWidget(
            answer:
                'Possibilita a criação de aplicativos compilados nativamente.',
            isRight: true,
            isSelected: false,
          ),
          AnswerWidget(
            answer:
                'Possibilita a criação de aplicativos compilados nativamente.',
            isRight: true,
            isSelected: false,
          ),
          AnswerWidget(
            answer:
                'Possibilita a criação de aplicativos compilados nativamente.',
            isRight: true,
            isSelected: true,
          ),
          AnswerWidget(
            answer:
                'Possibilita a criação de aplicativos compilados nativamente.',
            isRight: true,
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
