import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class QuestionThirtyThree extends StatefulWidget {

  @override
  _QuestionThirtyThreeState createState() => _QuestionThirtyThreeState();
}

class _QuestionThirtyThreeState extends State<QuestionThirtyThree> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller)
    {
      return Container(
        child: Column(
          children: [
            AppText(
              title: txt_qsn33,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            Row(
              children: [
                Expanded(                  flex: 4,
                    child: AppText(title: "Not Useful", fontSize: 16,)),
                Expanded(
                  child: Radio(
                    value: 0,
                    groupValue: controller.groupValue33,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue33 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("1")),
                Expanded(
                  child: Radio(
                    value: 1,
                    groupValue: controller.groupValue33,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue33 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("2")),
                Expanded(
                  child: Radio(
                    value: 2,
                    groupValue: controller.groupValue33,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue33 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("3")),
                Expanded(
                  child: Radio(
                    value: 3,
                    groupValue: controller.groupValue33,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue33 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("4")),
                Expanded(
                  child: Radio(
                    value: 4,
                    groupValue: controller.groupValue33,
                    onChanged: (newValue) {
                      setState(() {
                        controller.groupValue33 = newValue;
                      });
                    },
                    activeColor: colorLightPurple,
                  ),
                ),
                Expanded(child: Text("5")),
                Expanded(flex: 4,child: AppText(title: "very Useful", fontSize: 16,)),
              ],
            ),
          ],
        ),
      );
    });
  }
}
