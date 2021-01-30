import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionForty extends StatefulWidget {

  @override
  _QuestionFortyState createState() => _QuestionFortyState();
}

class _QuestionFortyState extends State<QuestionForty> {
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
              title: txt_qsn40,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            myRadioButton(
                title: text_qsn40a,
                value: 0,
                groupValue: controller.groupValue40,
                onChanged: controller.ans40),
            myRadioButton(
                title: text_qsn40b,
                value: 1,
                groupValue: controller.groupValue40,
                onChanged: controller.ans40),
            myRadioButton(
                title: text_qsn40c,
                value: 2,
                groupValue: controller.groupValue40,
                onChanged: controller.ans40),
            myRadioButton(
                title: text_qsn40d,
                value: 3,
                groupValue: controller.groupValue40,
                onChanged: controller.ans40),
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
