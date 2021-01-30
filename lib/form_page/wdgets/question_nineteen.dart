import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/utils/validation_utils.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class QuestionNineteen extends StatefulWidget {
  @override
  _QuestionNineteenState createState() => _QuestionNineteenState();
}

class _QuestionNineteenState extends State<QuestionNineteen> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller){
      return Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: txt_qsn19,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn19a,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn19a = !controller.qsn19a;
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
                        Expanded(child: Text(text_qsn19a))
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn19b,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn19b = !controller.qsn19b;
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
                        Expanded(child: Text(text_qsn19b)
                        )],
                    ),

                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn19c,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn19c = !controller.qsn19c;
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
                        Expanded(child: Text(text_qsn19c))
                      ],
                    ),
                    controller.qsn19c == true
                        ? Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 20),
                      child: AppTextFormField(
                        labelText: "Specify",
                        controllerText: controller.qsn19Controller,
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
