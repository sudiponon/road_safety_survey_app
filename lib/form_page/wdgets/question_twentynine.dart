import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionTwentyNine extends StatefulWidget {

  @override
  _QuestionTwentyNineState createState() => _QuestionTwentyNineState();
}

class _QuestionTwentyNineState extends State<QuestionTwentyNine> {
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
              title: txt_qsn29,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            myRadioButton(
                title: text_qsn29a,
                value: 0,
                groupValue: controller.groupValue29,
                onChanged: controller.ans29),
            myRadioButton(
                title: text_qsn29b,
                value: 1,
                groupValue: controller.groupValue29,
                onChanged: controller.ans29),
            myRadioButton(
                title: text_qsn29c,
                value: 2,
                groupValue: controller.groupValue29,
                onChanged: controller.ans29),
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
