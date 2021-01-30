import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionThirteen extends StatefulWidget {

  @override
  _QuestionThirteenState createState() => _QuestionThirteenState();
}

class _QuestionThirteenState extends State<QuestionThirteen> {
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
              title: txt_qsn13,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            myRadioButton(
                title: text_qsn13a,
                value: 0,
                groupValue: controller.groupValue13,
                onChanged: controller.ans13),
            myRadioButton(
                title: text_qsn13b,
                value: 1,
                groupValue: controller.groupValue13,
                onChanged: controller.ans13),
            myRadioButton(
                title: text_qsn13c,
                value: 2,
                groupValue: controller.groupValue13,
                onChanged: controller.ans13),
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
