import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final QuizModel quiz;

  const QuizCardWidget({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          Text(
            quiz.title,
            style: AppTextStyles.heading15,
          ),
          Row(
            children: [
              Text(
                '${quiz.questionsAnswered}/${quiz.questions.length}',
                style: AppTextStyles.body11,
              ),
              SizedBox(width: 5),
              Expanded(
                child: ProgressIndicatorWidget(
                  value: quiz.questionsAnswered / quiz.questions.length,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
