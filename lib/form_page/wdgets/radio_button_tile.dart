import 'package:flutter/material.dart';
import 'package:road_safety_survey/constants/color.dart';

class MyRadioButton extends StatelessWidget {
  final String title;
  final int value;
  Function onChanged;
  final int groupValue;

  MyRadioButton(this.title, this.value, this.onChanged, this.groupValue);

  @override
  Widget build(BuildContext context) {
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
