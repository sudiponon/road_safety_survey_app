import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/utils/validation_utils.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class QuestionTwentySeven extends StatefulWidget {
  @override
  _QuestionTwentySevenState createState() => _QuestionTwentySevenState();
}

class _QuestionTwentySevenState extends State<QuestionTwentySeven> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller){
      return Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: txt_qsn27,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn27a,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn27a = !controller.qsn27a;
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
                        Expanded(child: Text(text_qsn27a))
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn27b,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn27b = !controller.qsn27b;
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
                        Expanded(child: Text(text_qsn27b)
                        )],
                    ),

                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn27c,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn27c = !controller.qsn27c;
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
                        Expanded(child: Text(text_qsn27c))
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn27d,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn27d = !controller.qsn27d;
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
                        Expanded(child: Text(text_qsn27d)
                        )],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn27e,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn27e = !controller.qsn27e;
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
                        Expanded(child: Text(text_qsn27e)
                        )],
                    ),

                    controller.qsn27e == true
                        ? Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 20),
                      child: AppTextFormField(
                        labelText: "Specify",
                        controllerText: controller.qsn27Controller,
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
