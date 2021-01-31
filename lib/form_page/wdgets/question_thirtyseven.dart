import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionThirtySeven extends StatefulWidget {
  @override
  _QuestionThirtySevenState createState() => _QuestionThirtySevenState();
}

class _QuestionThirtySevenState extends State<QuestionThirtySeven> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(
        builder: (context, controller) {
      return Container(
        child: Column(
          children: [
            AppText(
              title: txt_qsn37,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: AppText(
                      title: "Very Bad",
                      fontSize: 16,
                    )),
                Expanded(
                  child: Radio(
                    value: 0,
                    groupValue: controller.groupValue37,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue37 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("1")),
                Expanded(
                  child: Radio(
                    value: 1,
                    groupValue: controller.groupValue37,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue37 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("2")),
                Expanded(
                  child: Radio(
                    value: 2,
                    groupValue: controller.groupValue37,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue37 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("3")),
                Expanded(
                    flex: 2,
                    child: AppText(
                      title: "Very Good",
                      fontSize: 16,
                    )),
              ],
            ),
          ],
        ),
      );
    });
  }
}
