import 'package:flutter/material.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/constants/string.dart';

class QuestionEight extends StatefulWidget {

  int _groupValue8a;
  int _groupValue8b;
  int _groupValue8c;
  int _groupValue8d;
  int _groupValue8e;
  int _groupValue8f;
  int _groupValue8g;
  int _groupValue8h;
  int _groupValue8i;
  int _groupValue8j;

  TextEditingController qsn8aController;
  TextEditingController qsn8bController;
  TextEditingController qsn8cController;
  TextEditingController qsn8dController;
  TextEditingController qsn8eController;
  TextEditingController qsn8fController;
  TextEditingController qsn8gController;

  QuestionEight(
      this._groupValue8a,
      this._groupValue8b,
      this._groupValue8c,
      this._groupValue8d,
      this._groupValue8e,
      this._groupValue8f,
      this._groupValue8g,
      this._groupValue8h,
      this._groupValue8i,
      this._groupValue8j,
      this.qsn8aController,
      this.qsn8bController,
      this.qsn8cController,
      this.qsn8dController,
      this.qsn8eController,
      this.qsn8fController,
      this.qsn8gController,
      this.qsn8hController,
      this.qsn8iController,
      this.qsn8jController);

  TextEditingController qsn8hController;
  TextEditingController qsn8iController;
  TextEditingController qsn8jController;
  @override
  _QuestionEightState createState() => _QuestionEightState();
}

class _QuestionEightState extends State<QuestionEight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: txt_qsn8,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: baseColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: txt_qsn8sub,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: colorTextGrey)),
                  ],
                ),
              ),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("bus"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8a,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8a = newValue;
                            widget.qsn8aController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8a,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8a = newValue;
                            widget.qsn8aController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Expanded(
                      child: Radio(
                        value: 2,
                        groupValue: widget._groupValue8a,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8a = newValue;
                            widget.qsn8aController.text = "at least 4 days week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("3-Wheelers"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8b,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8b = newValue;
                            widget.qsn8bController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8b,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8b = newValue;
                            widget.qsn8bController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8b,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8b = newValue;
                          widget.qsn8bController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Personal car as passenger"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8c,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8c = newValue;
                            widget.qsn8cController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8c,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8c = newValue;
                            widget.qsn8cController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8c,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8c = newValue;
                          widget.qsn8cController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Car as driver"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8d,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8d = newValue;
                            widget.qsn8dController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8d,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8d = newValue;
                            widget.qsn8dController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8d,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8d = newValue;
                          widget.qsn8dController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Taxi "),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8e,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8e = newValue;
                            widget.qsn8eController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8e,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8e = newValue;
                            widget.qsn8eController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8e,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8e = newValue;
                          widget.qsn8eController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Two wheeler as driver "),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8f,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8f = newValue;
                            widget.qsn8fController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8f,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8f = newValue;
                            widget.qsn8fController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8f,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8f = newValue;
                          widget.qsn8fController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Two wheeler as pillion rider "),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8g,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8g = newValue;
                            widget.qsn8gController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8g,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8g = newValue;
                            widget.qsn8gController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8g,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8g = newValue;
                          widget.qsn8gController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Cycle "),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8h,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8h = newValue;
                            widget.qsn8hController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8h,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8h = newValue;
                            widget.qsn8hController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8h,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8h = newValue;
                          widget.qsn8hController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Pedestrian "),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8i,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8i = newValue;
                            widget.qsn8iController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8i,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8i = newValue;
                            widget.qsn8iController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8i,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8i = newValue;
                          widget.qsn8iController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
              Container(
                  child: Row(children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Animal driven vehicle"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Radio(
                        value: 0,
                        groupValue: widget._groupValue8j,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8j = newValue;
                            widget.qsn8jController.text = "never";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("1")),
                    Expanded(
                      child: Radio(
                        value: 1,
                        groupValue: widget._groupValue8j,
                        onChanged: (newValue) {
                          setState(() {
                            widget._groupValue8j = newValue;
                            widget.qsn8jController.text = "1-3 days per week";
                          });
                        },
                        activeColor: colorLightPurple,
                      ),
                    ),
                    Expanded(child: Text("2")),
                    Radio(
                      value: 2,
                      groupValue: widget._groupValue8j,
                      onChanged: (newValue) {
                        setState(() {
                          widget._groupValue8j = newValue;
                          widget.qsn8jController.text = "at least 4 days week";
                        });
                      },
                      activeColor: colorLightPurple,
                    ),
                    Text("3"),
                  ])),
            ],
          ),
        ],
      ),
    );
  }
}
