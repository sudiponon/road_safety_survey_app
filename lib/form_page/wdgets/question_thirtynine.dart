import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/utils/validation_utils.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class QuestionThirtyNine extends StatefulWidget {

  @override
  _QuestionThirtyNineState createState() => _QuestionThirtyNineState();
}

class _QuestionThirtyNineState extends State<QuestionThirtyNine> {
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
              title: txt_qsn39,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            myRadioButton(
                title: text_qsn39a,
                value: 0,
                groupValue: controller.groupValue39,
                onChanged: controller.ans39),
            myRadioButton(
                title: text_qsn39b,
                groupValue: controller.groupValue39,
                value: 1,
                onChanged: controller.ans39),
            myRadioButton(
                title: text_qsn39c,
                groupValue: controller.groupValue39,
                value: 2,
                onChanged: controller.ans39),
            myRadioButton(
                title: "Other",
                groupValue: controller.groupValue39,
                value: 3,
                onChanged: controller.ans39),
            controller.groupValue39 == 3
                ? Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20, bottom: 10),
              child: AppTextFormField(
                labelText: "Specify",
                controllerText: controller.qsn39Controller,
                validationFunction: validateTextField,
                validationReg: nameValidationRegex,
              ),
            )
                : Container()
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
