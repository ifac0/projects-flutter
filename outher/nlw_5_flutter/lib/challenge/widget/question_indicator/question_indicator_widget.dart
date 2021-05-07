import 'package:flutter/material.dart';
import 'package:nlw_5_flutter/core/core.dart';
import 'package:nlw_5_flutter/shared/widget/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Questão 04',
                  style: AppTextStyles.body,
                ),
                Text(
                  'de 10',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(
              value: 0.7,
            ),
          ],
        ),
      ),
    );
  }
}
