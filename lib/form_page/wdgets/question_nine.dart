import 'package:flutter/material.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/utils/validation_utils.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class QuestionNine extends StatefulWidget {
  bool _qsn9a;
  bool _qsn9b;
  bool _qsn9c;
  bool _qsn9d;
  bool _qsn9e;
  bool _qsn9f;

  TextEditingController qsn9Controller;

  QuestionNine(this._qsn9a, this._qsn9b, this._qsn9c, this._qsn9d, this._qsn9e,
      this._qsn9f, this.qsn9Controller);

  @override
  _QuestionNineState createState() => _QuestionNineState();
}

class _QuestionNineState extends State<QuestionNine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: txt_qsn9,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn9a,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn9a = !widget._qsn9a;
                          widget.qsn9Controller.text =
                              (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                                  (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                                  (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                                  (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                                  (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                                  (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                          print(widget.qsn9Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn9check1))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn9b,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn9b = !widget._qsn9b;
                          widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                                  (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                                  (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                                  (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                                  (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                                  (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                          print(widget.qsn9Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn9check2))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn9c,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn9c = !widget._qsn9c;
                          widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                                  (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                                  (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                                  (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                                  (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                                  (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                          print(widget.qsn9Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn9check3))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn9d,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget. _qsn9d = !widget._qsn9d;
                          widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                                  (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                                  (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                                  (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                                  (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                                  (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                          print(widget.qsn9Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn9check4))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn9e,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn9e = !widget._qsn9e;
                          widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                                  (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                                  (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                                  (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                                  (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                                  (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                          print(widget.qsn9Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn9check5))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value:widget._qsn9f,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn9f = !widget._qsn9f;
                          if (widget._qsn9f == true) {
                            widget._qsn9b = false;
                            widget._qsn9c = false;
                            widget._qsn9d = false;
                            widget._qsn9e = false;
                            widget._qsn9a = false;
                          }
                          widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              widget.qsn9Controller.text =
                              (widget._qsn9a ? txt_qsn9check1 + ", " : "") +
                                  (widget._qsn9b ? txt_qsn9check2 + ", " : "") +
                                  (widget._qsn9c ? txt_qsn9check3 + ", " : "") +
                                  (widget._qsn9d ? txt_qsn9check4 + ", " : "") +
                                  (widget._qsn9e ? txt_qsn9check5 + ", " : "") +
                                  (widget._qsn9f ? txt_qsn9check6 + ", " : "");
                          print(widget.qsn9Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn9check6)),
                ],
              ),
              widget._qsn9f == true
                  ? Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 20),
                child: AppTextFormField(
                  labelText: "Specify",
                  controllerText: widget.qsn9Controller,
                  validationFunction: validateTextField,
                  validationReg: nameValidationRegex,
                ),
              )
                  : Container()
            ],
          ),
        ],
      ),
    );
  }
}
