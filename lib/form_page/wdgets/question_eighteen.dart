import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/utils/validation_utils.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class QuestionEighteen extends StatefulWidget {
  @override
  _QuestionEighteenState createState() => _QuestionEighteenState();
}

class _QuestionEighteenState extends State<QuestionEighteen> {
  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller){
      return Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: txt_qsn18,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn18a,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn18a = !controller.qsn18a;
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
                        Expanded(child: Text(text_qsn18a))
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn18b,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn18b = !controller.qsn18b;
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
                        Expanded(child: Text(text_qsn18b)
                        )],
                    ),

                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn18c,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn18c = !controller.qsn18c;
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
                        Expanded(child: Text(text_qsn18c))
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn18d,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn18d = !controller.qsn18d;
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
                        Expanded(child: Text(text_qsn18d)
                        )],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.qsn18e,
                            activeColor: colorLightPurple,
                            onChanged: (value) {
                              setState(() {
                                controller.qsn18e = !controller.qsn18e;
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
                        Expanded(child: Text(text_qsn18e)
                        )],
                    ),

                    controller.qsn18e == true
                        ? Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 20),
                      child: AppTextFormField(
                        labelText: "Specify",
                        controllerText: controller.qsn18Controller,
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
