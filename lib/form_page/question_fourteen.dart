import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/utils/validation_utils.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class QuestionFourteen extends StatefulWidget {
  @override
  _QuestionFourteenState createState() => _QuestionFourteenState();
}

class _QuestionFourteenState extends State<QuestionFourteen> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller){
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          AppText(
          title: txt_qsn14,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Checkbox(
                        value: controller.qsn14a,
                        activeColor: colorLightPurple,
                        onChanged: (value) {
                          setState(() {
                            controller.qsn14a = !controller.qsn14a;
                            // widget.qsn9Controller.text =
                            //     (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                            //         (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                            //         (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                            //         (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                            //         (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                            //         (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                            // print(widget.qsn9Controller.text);
                          });
                        }),
                    Expanded(child: Text(text_qsn14a))
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: controller.qsn14b,
                        activeColor: colorLightPurple,
                        onChanged: (value) {
                          setState(() {
                            controller.qsn14b = !controller.qsn14b;
                            // widget.qsn9Controller.text =
                            //     (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                            //         (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                            //         (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                            //         (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                            //         (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                            //         (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                            // print(widget.qsn9Controller.text);
                          });
                        }),
                    Expanded(child: Text(text_qsn14b)
                    )],
                ),

                Row(
                  children: [
                    Checkbox(
                        value: controller.qsn14c,
                        activeColor: colorLightPurple,
                        onChanged: (value) {
                          setState(() {
                            controller.qsn14c = !controller.qsn14c;
                            // widget.qsn9Controller.text =
                            //     (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                            //         (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                            //         (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                            //         (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                            //         (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                            //         (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                            // print(widget.qsn9Controller.text);
                          });
                        }),
                    Expanded(child: Text(text_qsn14c))
                  ],
                ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn14d,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn14d = !controller.qsn14d;
                                // widget.qsn9Controller.text =
                                //     (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                                //         (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                                //         (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                                //         (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                                //         (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                                //         (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                                // print(widget.qsn9Controller.text);
                              });
                            }),
                        Expanded(child: Text(text_qsn14d)
                        )],
                        ),
                controller.qsn14d == true
                    ? Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 20),
                  child: AppTextFormField(
                    labelText: "Specify",
                    controllerText: controller.qsn14Controller,
                    validationFunction: validateTextField,
                    validationReg: nameValidationRegex,
                  ),
                )
                    : Container()
              ],
            ),
        ]
      ));
    });
  }
}
