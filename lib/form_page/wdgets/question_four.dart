import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionFour extends StatefulWidget {

  @override
  _QuestionFourState createState() => _QuestionFourState();
}

class _QuestionFourState extends State<QuestionFour> {
  @override
  Widget build(BuildContext context) {
      return ControlledWidgetBuilder<FormViewController>(builder: (context, controller) {

        return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: txt_qsn4,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            _myRadioButton(
                title: text_qsn4a,
                value: 0,
                groupValue: controller.groupValue4,
                onChanged: controller.ans4),
            _myRadioButton(
                title: text_qsn4b,
                groupValue: controller.groupValue4,
                value: 1,
                onChanged:controller.ans4),
            _myRadioButton(
                title: text_qsn4c,
                groupValue: controller.groupValue4,
                value: 2,
                onChanged: controller.ans4),
            _myRadioButton(
                title: text_qsn4d,
                groupValue: controller.groupValue4,
                value: 3,
                onChanged: controller.ans4),
            _myRadioButton(
                title: text_qsn4e,
                groupValue: controller.groupValue4,
                value: 4,
                onChanged: controller.ans4),
            _myRadioButton(
                title: text_qsn4f,
                groupValue: controller.groupValue4,
                value: 5,
                onChanged: controller.ans4),
            _myRadioButton(
                title: text_qsn4g,
                groupValue: controller.groupValue4,
                value: 6,
                onChanged: controller.ans4),
          ],
        ),
    );
  });
  }
  Widget _myRadioButton(
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
