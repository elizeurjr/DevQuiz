import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progess_indicator/progress_indicator_widgets.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int lenght;
  QuestionIndicatorWidget(
      {Key? key, required this.currentPage, required this.lenght})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão $currentPage",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de $lenght",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(value: currentPage / lenght),
          ],
        ),
      ),
    );
  }
}
