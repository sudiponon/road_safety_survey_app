import 'package:flutter/material.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/constants/string.dart';
import 'package:road_safety_survey/utils/validation_utils.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class QuestionTen extends StatefulWidget {
  bool _qsn10a;
  bool _qsn10b;
  bool _qsn10c;
  bool _qsn10d;
  bool _qsn10e;
  bool _qsn10f;

  TextEditingController qsn10Controller;

  QuestionTen(this._qsn10a, this._qsn10b, this._qsn10c, this._qsn10d,
      this._qsn10e, this._qsn10f, this.qsn10Controller);

  @override
  _QuestionTenState createState() => _QuestionTenState();
}

class _QuestionTenState extends State<QuestionTen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: txt_qsn10,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn10a,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn10a = !widget._qsn10a;
                          widget.qsn10Controller.text = (widget._qsn10a
                                  ? txt_qsn10check1 + ", "
                                  : "") +
                              (widget._qsn10b ? txt_qsn10check2 + ", " : "") +
                              (widget._qsn10c ? txt_qsn10check3 + ", " : "") +
                              (widget._qsn10d ? txt_qsn10check4 + ", " : "") +
                              (widget._qsn10e ? txt_qsn10check5 + ", " : "") +
                              (widget._qsn10f ? txt_qsn10check6 + ", " : "");
                          print(widget.qsn10Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn10check1))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn10b,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn10b = !widget._qsn10b;
                          widget.qsn10Controller.text = (widget._qsn10a
                                  ? txt_qsn10check1 + ", "
                                  : "") +
                              (widget._qsn10b ? txt_qsn10check2 + ", " : "") +
                              (widget._qsn10c ? txt_qsn10check3 + ", " : "") +
                              (widget._qsn10d ? txt_qsn10check4 + ", " : "") +
                              (widget._qsn10e ? txt_qsn10check5 + ", " : "") +
                              (widget._qsn10f ? txt_qsn10check6 + ", " : "");
                          print(widget.qsn10Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn10check2))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn10c,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn10c = !widget._qsn10c;
                          widget.qsn10Controller.text = (widget._qsn10a
                                  ? txt_qsn10check1 + ", "
                                  : "") +
                              (widget._qsn10b ? txt_qsn10check2 + ", " : "") +
                              (widget._qsn10c ? txt_qsn10check3 + ", " : "") +
                              (widget._qsn10d ? txt_qsn10check4 + ", " : "") +
                              (widget._qsn10e ? txt_qsn10check5 + ", " : "") +
                              (widget._qsn10f ? txt_qsn10check6 + ", " : "");
                          print(widget.qsn10Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn10check3))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn10d,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn10d = !widget._qsn10d;
                          widget.qsn10Controller.text = (widget._qsn10a
                                  ? txt_qsn10check1 + ", "
                                  : "") +
                              (widget._qsn10b ? txt_qsn10check2 + ", " : "") +
                              (widget._qsn10c ? txt_qsn10check3 + ", " : "") +
                              (widget._qsn10d ? txt_qsn10check4 + ", " : "") +
                              (widget._qsn10e ? txt_qsn10check5 + ", " : "") +
                              (widget._qsn10f ? txt_qsn10check6 + ", " : "");
                          print(widget.qsn10Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn10check4))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn10e,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn10e = !widget._qsn10e;
                          widget.qsn10Controller.text = (widget._qsn10a
                                  ? txt_qsn10check1 + ", "
                                  : "") +
                              (widget._qsn10b ? txt_qsn10check2 + ", " : "") +
                              (widget._qsn10c ? txt_qsn10check3 + ", " : "") +
                              (widget._qsn10d ? txt_qsn10check4 + ", " : "") +
                              (widget._qsn10e ? txt_qsn10check5 + ", " : "") +
                              (widget._qsn10f ? txt_qsn10check6 + ", " : "");
                          print(widget.qsn10Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn10check5))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: widget._qsn10f,
                      activeColor: colorLightPurple,
                      onChanged: (value) {
                        setState(() {
                          widget._qsn10f = !widget._qsn10f;
                          if (widget._qsn10f == true) {
                            widget._qsn10b = false;
                            widget._qsn10c = false;
                            widget._qsn10d = false;
                            widget._qsn10e = false;
                            widget._qsn10a = false;
                          }
                          widget.qsn10Controller.text = (widget._qsn10a
                                  ? txt_qsn10check1 + ", "
                                  : "") +
                              (widget._qsn10b ? txt_qsn10check2 + ", " : "") +
                              (widget._qsn10c ? txt_qsn10check3 + ", " : "") +
                              (widget._qsn10d ? txt_qsn10check4 + ", " : "") +
                              (widget._qsn10e ? txt_qsn10check5 + ", " : "") +
                              (widget._qsn10f ? txt_qsn10check6 + ", " : "");
                          print(widget.qsn10Controller.text);
                        });
                      }),
                  Expanded(child: Text(txt_qsn10check6)),
                ],
              ),
              widget._qsn10f == true
                  ? Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 20),
                      child: AppTextFormField(
                        labelText: "Specify",
                        controllerText: widget.qsn10Controller,
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
