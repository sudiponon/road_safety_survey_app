import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionTwentyFive extends StatefulWidget {

  @override
  _QuestionTwentyFiveState createState() => _QuestionTwentyFiveState();
}

class _QuestionTwentyFiveState extends State<QuestionTwentyFive> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller)
    {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: txt_qsn25,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            myRadioButton(
                title: text_qsn25a,
                value: 0,
                groupValue: controller.groupValue25,
                onChanged: controller.ans25),
            myRadioButton(
                title: text_qsn25b,
                value: 1,
                groupValue: controller.groupValue25,
                onChanged: controller.ans25),
            myRadioButton(
                title: text_qsn25c,
                value: 2,
                groupValue: controller.groupValue25,
                onChanged: controller.ans25),
          ],
        ),
      );
    });
  }
  Widget myRadioButton(
      {String title, int value, Function onChanged, int groupValue}) {
    return RadioListTile(
      value: value,
      dense: true,
      groupValue: groupValue,
      onChanged: onChanged,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      activeColor: colorLightPurple,
    );
  }
}
