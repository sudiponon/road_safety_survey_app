import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:road_safety_survey/constants/color.dart';

class AppTextFormField extends StatefulWidget {
  FocusNode focusNode;
  TextInputType inputType;
  String labelText;
  RegExp validationReg;
  Function validationFunction;
  TextEditingController controllerText;
  bool needSuffix;
  bool enabled;
  double contentPadding;
  bool inputFormatter;
  bool allowFilterType;
  bool needMaxLength;
  bool isNumOnly;
  int maxLength;

  AppTextFormField(
      {this.focusNode,
      this.inputType,
      @required this.labelText,
      this.validationReg,
      this.validationFunction,
      this.needSuffix = false,
      this.enabled = true,
      this.needMaxLength = false,
      this.maxLength = 10,
      this.contentPadding = 0,
      this.inputFormatter = false,
      this.allowFilterType = true,
      this.isNumOnly = false,
      @required this.controllerText});

  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.needMaxLength ? widget.maxLength : null,
      enabled: widget.enabled,
      obscureText: widget.needSuffix ? obscureText : false,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        suffixIcon: widget.needSuffix
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: colorText,
                ),
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                })
            : null,
        contentPadding: EdgeInsets.all(widget.contentPadding),
        labelText: widget.labelText,
        labelStyle: TextStyle(
            color: colorLightPurple,
            fontSize: 16.0,
            fontWeight: FontWeight.normal),
      ),
      keyboardType: widget.inputType,
      inputFormatters: widget.inputFormatter
          ? <TextInputFormatter>[
              widget.allowFilterType
                  ? widget.isNumOnly
                      ? FilteringTextInputFormatter.digitsOnly
                      : FilteringTextInputFormatter.allow(widget.validationReg)
                  : FilteringTextInputFormatter.deny(widget.validationReg),
            ]
          : null,
      style: TextStyle(
          color: baseColor, fontSize: 17.0, fontWeight: FontWeight.w500),
      validator: widget.validationFunction,
      controller: widget.controllerText,
    );
  }
}
