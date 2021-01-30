import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionFive extends StatefulWidget {
  TextEditingController qsn5Controller;
  int groupValue5;
  Function callBack;

  QuestionFive({this.groupValue5, this.qsn5Controller, this.callBack});

  @override
  _QuestionFiveState createState() => _QuestionFiveState();
}

class _QuestionFiveState extends State<QuestionFive> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: txt_qsn5,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          _myRadioButton(
              title: text_qsn5a,
              value: 0,
              groupValue: controller.groupValue5,
              onChanged: controller.ans5),
          _myRadioButton(
              title: text_qsn5b,
              groupValue: controller.groupValue5,
              value: 1,
      onChanged: controller.ans5),
          _myRadioButton(
              title: text_qsn5c,
              groupValue: controller.groupValue5,
              value: 2,
      onChanged: controller.ans5),
          _myRadioButton(
              title: text_qsn5d,
              groupValue: controller.groupValue5,
              value: 3,
      onChanged: controller.ans5),
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
