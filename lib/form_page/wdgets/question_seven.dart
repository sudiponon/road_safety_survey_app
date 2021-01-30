// import 'package:flutter/material.dart';
// import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
// import 'package:road_safety_survey/constants/color.dart';
// import 'package:road_safety_survey/constants/string.dart';
// import 'package:road_safety_survey/form_page/form_controller.dart';
//
// class QuestionSeven extends StatefulWidget {
//
//
//   @override
//   QuestionSevenState createState() => QuestionSevenState();
// }
//
// class QuestionSevenState extends State<QuestionSeven> {
//   @override
//   Widget build(BuildContext context) {
//     return ControlledWidgetBuilder<FormViewController>(builder: (context, controller)
//     {
//       return Container(
//         child: Column(
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 RichText(
//                   text: TextSpan(
//                     text: txt_qsn7,
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600,
//                         color: baseColor),
//                     children: <TextSpan>[
//                       TextSpan(
//                           text: txt_qsn7sub,
//                           style: TextStyle(
//                               fontWeight: FontWeight.normal,
//                               fontSize: 16,
//                               color: colorTextGrey)),
//                     ],
//                   ),
//                 ),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("bus"),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7a,
//                           onChanged: (value){controller.ans7(value);  },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7a,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7a = newValue;
//                               controller.qsn7aController.text =
//                               ;
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Expanded(
//                         child: Radio(
//                           value: 2,
//                           groupValue: controller.groupValue7a,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7a = newValue;
//                               controller.qsn7aController.text =
//                               ;
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("3-Wheelers"),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7b,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7b = newValue;
//                               controller.qsn7bController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7b,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7b = newValue;
//                               controller.qsn7bController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7b,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7b = newValue;
//                             controller.qsn7bController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Personal car as passenger"),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7c,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7c = newValue;
//                               controller.qsn7cController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7c,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7c = newValue;
//                               controller.qsn7cController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7c,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7c = newValue;
//                             controller.qsn7cController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Car as driver"),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7d,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7d = newValue;
//                               controller.qsn7dController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7d,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7d = newValue;
//                               controller.qsn7dController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7d,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7d = newValue;
//                             controller.qsn7dController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Taxi "),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7e,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7e = newValue;
//                               controller.qsn7eController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7e,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7e = newValue;
//                               controller.qsn7eController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7e,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7e = newValue;
//                             controller.qsn7eController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Two wheeler as driver "),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7f,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7f = newValue;
//                               controller.qsn7fController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7f,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7f = newValue;
//                               controller.qsn7fController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7f,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7f = newValue;
//                             controller.qsn7fController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Two wheeler as pillion rider "),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7g,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7g = newValue;
//                               controller.qsn7gController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7g,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7g = newValue;
//                               controller.qsn7gController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7g,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7g = newValue;
//                             controller.qsn7gController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Cycle "),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7h,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7h = newValue;
//                               controller.qsn7hController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7h,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7h = newValue;
//                               controller.qsn7hController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7h,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7h = newValue;
//                             controller.qsn7hController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Pedestrian "),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7i,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7i = newValue;
//                               controller.qsn7iController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7i,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7i = newValue;
//                               controller.qsn7iController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7i,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7i = newValue;
//                             controller.qsn7iController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//                 Container(
//                     child: Row(children: [
//                       Expanded(
//                         flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Text("Animal driven vehicle"),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Expanded(
//                         child: Radio(
//                           value: 0,
//                           groupValue: controller.groupValue7j,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7j = newValue;
//                               controller.qsn7jController.text = "never";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("1")),
//                       Expanded(
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.groupValue7j,
//                           onChanged: (newValue) {
//                             setState(() {
//                               controller.groupValue7j = newValue;
//                               controller.qsn7jController.text =
//                               "1-3 days per week";
//                             });
//                           },
//                           activeColor: colorLightPurple,
//                         ),
//                       ),
//                       Expanded(child: Text("2")),
//                       Radio(
//                         value: 2,
//                         groupValue: controller.groupValue7j,
//                         onChanged: (newValue) {
//                           setState(() {
//                             controller.groupValue7j = newValue;
//                             controller.qsn7jController.text =
//                             "at least 4 days week";
//                           });
//                         },
//                         activeColor: colorLightPurple,
//                       ),
//                       Text("3"),
//                     ])),
//               ],
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }
