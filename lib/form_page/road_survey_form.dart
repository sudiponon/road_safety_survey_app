// import 'package:flutter/material.dart';
// import 'package:road_safety_survey/constants/color.dart';
// import 'package:road_safety_survey/constants/string.dart';
// import 'package:road_safety_survey/form_page/wdgets/question_eight.dart';
// import 'package:road_safety_survey/form_page/wdgets/question_nine.dart';
// import 'package:road_safety_survey/form_page/wdgets/question_seven.dart';
// import 'package:road_safety_survey/form_page/wdgets/question_six.dart';
// import 'package:road_safety_survey/form_page/wdgets/question_ten.dart';
// import 'package:road_safety_survey/utils/validation_utils.dart';
// import 'package:road_safety_survey/widgets/app_text.dart';
// import 'package:road_safety_survey/widgets/app_text_form_field.dart';
//
// class RoadSafetyForm extends StatefulWidget {
//   @override
//   _RoadSafetyFormState createState() => _RoadSafetyFormState();
// }
//
// class _RoadSafetyFormState extends State<RoadSafetyForm> {
//   // Default Radio Button Selected Item When App Starts.
//   String radioButtonItem = 'ONE';
//
//
//   // Group Value for Radio Button.
//   int id = -1;
//
//   int _groupValue = -1;
//   int _groupValue5 = -1;
//   int _groupValue6 = -1;
//   int _groupValue7a = -1;
//   int _groupValue7b = -1;
//   int _groupValue7c = -1;
//   int _groupValue7d = -1;
//   int _groupValue7e = -1;
//   int _groupValue7f = -1;
//   int _groupValue7g = -1;
//   int _groupValue7h = -1;
//   int _groupValue7i = -1;
//   int _groupValue7j = -1;
//
//   int _groupValue8a = -1;
//   int _groupValue8b = -1;
//   int _groupValue8c = -1;
//   int _groupValue8d = -1;
//   int _groupValue8e = -1;
//   int _groupValue8f = -1;
//   int _groupValue8g = -1;
//   int _groupValue8h = -1;
//   int _groupValue8i = -1;
//   int _groupValue8j = -1;
//
//   bool _qsn9a = false;
//   bool _qsn9b = false;
//   bool _qsn9c = false;
//   bool _qsn9d = false;
//   bool _qsn9e = false;
//   bool _qsn9f = false;
//
//   bool _qsn10a = false;
//   bool _qsn10b = false;
//   bool _qsn10c = false;
//   bool _qsn10d = false;
//   bool _qsn10e = false;
//   bool _qsn10f = false;
//
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//   TextEditingController nameController = new TextEditingController();
//
//   TextEditingController phoneController = new TextEditingController();
//
//   TextEditingController ageController = new TextEditingController();
//
//   TextEditingController qsn4Controller = new TextEditingController();
//   TextEditingController qsn5Controller = new TextEditingController();
//   TextEditingController qsn6Controller = new TextEditingController();
//
//   TextEditingController qsn7aController = new TextEditingController();
//   TextEditingController qsn7bController = new TextEditingController();
//   TextEditingController qsn7cController = new TextEditingController();
//   TextEditingController qsn7dController = new TextEditingController();
//   TextEditingController qsn7eController = new TextEditingController();
//   TextEditingController qsn7fController = new TextEditingController();
//   TextEditingController qsn7gController = new TextEditingController();
//   TextEditingController qsn7hController = new TextEditingController();
//   TextEditingController qsn7iController = new TextEditingController();
//   TextEditingController qsn7jController = new TextEditingController();
//
//   TextEditingController qsn8aController = new TextEditingController();
//   TextEditingController qsn8bController = new TextEditingController();
//   TextEditingController qsn8cController = new TextEditingController();
//   TextEditingController qsn8dController = new TextEditingController();
//   TextEditingController qsn8eController = new TextEditingController();
//   TextEditingController qsn8fController = new TextEditingController();
//   TextEditingController qsn8gController = new TextEditingController();
//   TextEditingController qsn8hController = new TextEditingController();
//   TextEditingController qsn8iController = new TextEditingController();
//   TextEditingController qsn8jController = new TextEditingController();
//
//   TextEditingController qsn9Controller = new TextEditingController();
//   TextEditingController qsn10Controller = new TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: AppText(
//           title: "Data Entry Form",
//           textColor: Colors.white,
//           allCaps: true,
//           fontWeight: FontWeight.w400,
//           fontSize: 18,
//         ),
//         centerTitle: true,
//         backgroundColor: baseColor,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Container(
//             decoration: BoxDecoration(
//               color: formContainerColor,
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Form(
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                       child: AppText(
//                         title: "Road Safety Survey",
//                         textAlign: TextAlign.center,
//                         fontSize: 25,
//                         textColor: baseColor,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     AppText(
//                       title: "This survey is specially designed for female,"
//                           " old, differently abled and people residing "
//                           "in remote areas. ",
//                       textAlign: TextAlign.center,
//                       fontSize: 16,
//                       textColor: baseColor,
//                       fontWeight: FontWeight.normal,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 8.0),
//                       child: AppTextFormField(
//                           labelText: "1. Name", controllerText: nameController),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 8.0),
//                       child: AppTextFormField(
//                           labelText: "2. Contact Number",
//                           inputType: TextInputType.phone,
//                           isNumOnly: true,
//                           controllerText: phoneController),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 8.0),
//                       child: AppTextFormField(
//                         labelText: "3. Age",
//                         controllerText: ageController,
//                         isNumOnly: true,
//                         inputType: TextInputType.phone,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     questionFour(),
//                     questionFive(),
//                     qsn5Controller.text == "Female"
//                         ? questionSixtoTwenty()
//                         : Container(),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   questionFour() {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(
//             title: txt_qsn4,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//           _myRadioButton(
//               title: "Province No. 1",
//               value: 0,
//               groupValue: _groupValue,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue = newValue;
//                   qsn4Controller.text = "Province No. 1";
//                 });
//               }),
//           _myRadioButton(
//               title: "Province No. 2",
//               groupValue: _groupValue,
//               value: 1,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue = newValue;
//                   qsn4Controller.text = "Province No. 2";
//                 });
//               }),
//           _myRadioButton(
//               title: "Province No. 3",
//               groupValue: _groupValue,
//               value: 2,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue = newValue;
//                   qsn4Controller.text = "Province No. 3";
//                 });
//               }),
//           _myRadioButton(
//               title: "Gandaki",
//               groupValue: _groupValue,
//               value: 3,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue = newValue;
//                   qsn4Controller.text = "Gandaki";
//                 });
//               }),
//           _myRadioButton(
//               title: "Province No. 5",
//               groupValue: _groupValue,
//               value: 4,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue = newValue;
//                   qsn4Controller.text = "Province No. 5";
//                 });
//               }),
//           _myRadioButton(
//               title: "Karnali",
//               groupValue: _groupValue,
//               value: 5,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue = newValue;
//                   qsn4Controller.text = "Karnali";
//                 });
//               }),
//           _myRadioButton(
//               title: "Sundurpashchim",
//               groupValue: _groupValue,
//               value: 6,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue = newValue;
//                   qsn4Controller.text = "Sundurpashchim";
//                 });
//               }),
//         ],
//       ),
//     );
//   }
//
//   questionFive() {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(
//             title: txt_qsn5,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//           _myRadioButton(
//               title: "Female",
//               value: 0,
//               groupValue: _groupValue5,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue5 = newValue;
//                   qsn5Controller.text = "Female";
//                 });
//               }),
//           _myRadioButton(
//               title: "Differently abled/Old person",
//               groupValue: _groupValue5,
//               value: 1,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue5 = newValue;
//                   qsn5Controller.text = "Differently abled/Old person";
//                 });
//               }),
//           _myRadioButton(
//               title: "Remote area residents",
//               groupValue: _groupValue5,
//               value: 2,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue5 = newValue;
//                   qsn5Controller.text = "Remote area residents";
//                 });
//               }),
//           _myRadioButton(
//               title: "Other",
//               groupValue: _groupValue5,
//               value: 3,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue5 = newValue;
//                   qsn5Controller.text = "Other";
//                 });
//               }),
//         ],
//       ),
//     );
//   }
//
//   questionSixtoTwenty() {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(
//             title: "Female Respondents",
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           questionSix(),
//           questionSeven(),
//           questionEight(),
//           questionNine(),
//           questionTen(),
//         ],
//       ),
//     );
//   }
//
//   questionSix() {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(
//             title: txt_qsn6,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//           _myRadioButton(
//               title: "Educational Institutions or Job",
//               value: 0,
//               groupValue: _groupValue6,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue6 = newValue;
//                   qsn6Controller.text = "Educational Institutions or Job";
//                 });
//               }),
//           _myRadioButton(
//               title: "Shopping or Visiting relatives",
//               groupValue: _groupValue6,
//               value: 1,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue6 = newValue;
//                   qsn6Controller.text = "Shopping or Visiting relatives";
//                 });
//               }),
//           _myRadioButton(
//               title: "Dropping kids to school",
//               groupValue: _groupValue6,
//               value: 2,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue6 = newValue;
//                   qsn6Controller.text = "Dropping kids to school";
//                 });
//               }),
//           _myRadioButton(
//               title: "Other",
//               groupValue: _groupValue6,
//               value: 3,
//               onChanged: (newValue) {
//                 setState(() {
//                   _groupValue6 = newValue;
//                   qsn6Controller.text = "Other";
//                 });
//               }),
//           _groupValue6 == 3
//               ? Padding(
//                   padding: const EdgeInsets.only(left: 40.0, right: 20),
//                   child: AppTextFormField(
//                     labelText: "Specify",
//                     controllerText: qsn6Controller,
//                     validationFunction: validateTextField,
//                     validationReg: nameValidationRegex,
//                   ),
//                 )
//               : Container()
//         ],
//       ),
//     );
//   }
//
//   questionSeven() {
//     return Container(
//       child: Column(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               RichText(
//                 text: TextSpan(
//                   text: txt_qsn7,
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                       color: baseColor),
//                   children: <TextSpan>[
//                     TextSpan(
//                         text: txt_qsn7sub,
//                         style: TextStyle(
//                             fontWeight: FontWeight.normal,
//                             fontSize: 16,
//                             color: colorTextGrey)),
//                   ],
//                 ),
//               ),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("bus"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7a,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7a = newValue;
//                         qsn7aController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7a,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7a = newValue;
//                         qsn7aController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Expanded(
//                   child: Radio(
//                     value: 2,
//                     groupValue: _groupValue7a,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7a = newValue;
//                         qsn7aController.text = "at least 4 days week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("3-Wheelers"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7b,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7b = newValue;
//                         qsn7bController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7b,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7b = newValue;
//                         qsn7bController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7b,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7b = newValue;
//                       qsn7bController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Personal car as passenger"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7c,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7c = newValue;
//                         qsn7cController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7c,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7c = newValue;
//                         qsn7cController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7c,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7c = newValue;
//                       qsn7cController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Car as driver"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7d,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7d = newValue;
//                         qsn7dController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7d,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7d = newValue;
//                         qsn7dController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7d,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7d = newValue;
//                       qsn7dController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Taxi "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7e,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7e = newValue;
//                         qsn7eController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7e,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7e = newValue;
//                         qsn7eController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7e,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7e = newValue;
//                       qsn7eController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Two wheeler as driver "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7f,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7f = newValue;
//                         qsn7fController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7f,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7f = newValue;
//                         qsn7fController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7f,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7f = newValue;
//                       qsn7fController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Two wheeler as pillion rider "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7g,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7g = newValue;
//                         qsn7gController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7g,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7g = newValue;
//                         qsn7gController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7g,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7g = newValue;
//                       qsn7gController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Cycle "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7h,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7h = newValue;
//                         qsn7hController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7h,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7h = newValue;
//                         qsn7hController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7h,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7h = newValue;
//                       qsn7hController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Pedestrian "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7i,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7i = newValue;
//                         qsn7iController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7i,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7i = newValue;
//                         qsn7iController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7i,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7i = newValue;
//                       qsn7iController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Animal driven vehicle"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue7j,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7j = newValue;
//                         qsn7jController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue7j,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue7j = newValue;
//                         qsn7jController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue7j,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue7j = newValue;
//                       qsn7jController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   questionEight() {
//     return Container(
//       child: Column(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               RichText(
//                 text: TextSpan(
//                   text: txt_qsn8,
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                       color: baseColor),
//                   children: <TextSpan>[
//                     TextSpan(
//                         text: txt_qsn8sub,
//                         style: TextStyle(
//                             fontWeight: FontWeight.normal,
//                             fontSize: 16,
//                             color: colorTextGrey)),
//                   ],
//                 ),
//               ),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("bus"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8a,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8a = newValue;
//                         qsn8aController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8a,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8a = newValue;
//                         qsn8aController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Expanded(
//                   child: Radio(
//                     value: 2,
//                     groupValue: _groupValue8a,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8a = newValue;
//                         qsn8aController.text = "at least 4 days week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("3-Wheelers"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8b,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8b = newValue;
//                         qsn8bController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8b,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8b = newValue;
//                         qsn8bController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8b,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8b = newValue;
//                       qsn8bController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Personal car as passenger"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8c,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8c = newValue;
//                         qsn8cController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8c,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8c = newValue;
//                         qsn8cController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8c,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8c = newValue;
//                       qsn8cController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Car as driver"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8d,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8d = newValue;
//                         qsn8dController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8d,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8d = newValue;
//                         qsn8dController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8d,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8d = newValue;
//                       qsn8dController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Taxi "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8e,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8e = newValue;
//                         qsn8eController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8e,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8e = newValue;
//                         qsn8eController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8e,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8e = newValue;
//                       qsn8eController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Two wheeler as driver "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8f,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8f = newValue;
//                         qsn8fController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8f,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8f = newValue;
//                         qsn8fController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8f,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8f = newValue;
//                       qsn8fController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Two wheeler as pillion rider "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8g,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8g = newValue;
//                         qsn8gController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8g,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8g = newValue;
//                         qsn8gController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8g,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8g = newValue;
//                       qsn8gController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Cycle "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8h,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8h = newValue;
//                         qsn8hController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8h,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8h = newValue;
//                         qsn8hController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8h,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8h = newValue;
//                       qsn8hController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Pedestrian "),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8i,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8i = newValue;
//                         qsn8iController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8i,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8i = newValue;
//                         qsn8iController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8i,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8i = newValue;
//                       qsn8iController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//               Container(
//                   child: Row(children: [
//                 Expanded(
//                   flex: 4,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: Text("Animal driven vehicle"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Expanded(
//                   child: Radio(
//                     value: 0,
//                     groupValue: _groupValue8j,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8j = newValue;
//                         qsn8jController.text = "never";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("1")),
//                 Expanded(
//                   child: Radio(
//                     value: 1,
//                     groupValue: _groupValue8j,
//                     onChanged: (newValue) {
//                       setState(() {
//                         _groupValue8j = newValue;
//                         qsn8jController.text = "1-3 days per week";
//                       });
//                     },
//                     activeColor: colorLightPurple,
//                   ),
//                 ),
//                 Expanded(child: Text("2")),
//                 Radio(
//                   value: 2,
//                   groupValue: _groupValue8j,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _groupValue8j = newValue;
//                       qsn8jController.text = "at least 4 days week";
//                     });
//                   },
//                   activeColor: colorLightPurple,
//                 ),
//                 Text("3"),
//               ])),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   questionNine() {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(
//             title: txt_qsn9,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn9a,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn9a = !_qsn9a;
//                           qsn9Controller.text =
//                               (_qsn9a ? txt_qsn9check1 + ", " : "") +
//                                   (_qsn9b ? txt_qsn9check2 + ", " : "") +
//                                   (_qsn9c ? txt_qsn9check3 + ", " : "") +
//                                   (_qsn9d ? txt_qsn9check4 + ", " : "") +
//                                   (_qsn9e ? txt_qsn9check5 + ", " : "") +
//                                   (_qsn9f ? txt_qsn9check6 + ", " : "");
//                           print(qsn9Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn9check1))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn9b,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn9b = !_qsn9b;
//                           qsn9Controller.text =
//                               qsn9Controller.text =
//                               (_qsn9a ? txt_qsn9check1 + ", " : "") +
//                                   (_qsn9b ? txt_qsn9check2 + ", " : "") +
//                                   (_qsn9c ? txt_qsn9check3 + ", " : "") +
//                                   (_qsn9d ? txt_qsn9check4 + ", " : "") +
//                                   (_qsn9e ? txt_qsn9check5 + ", " : "") +
//                                   (_qsn9f ? txt_qsn9check6 + ", " : "");
//                           print(qsn9Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn9check2))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn9c,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn9c = !_qsn9c;
//                           qsn9Controller.text =
//                               qsn9Controller.text =
//                               (_qsn9a ? txt_qsn9check1 + ", " : "") +
//                                   (_qsn9b ? txt_qsn9check2 + ", " : "") +
//                                   (_qsn9c ? txt_qsn9check3 + ", " : "") +
//                                   (_qsn9d ? txt_qsn9check4 + ", " : "") +
//                                   (_qsn9e ? txt_qsn9check5 + ", " : "") +
//                                   (_qsn9f ? txt_qsn9check6 + ", " : "");
//                           print(qsn9Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn9check3))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn9d,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn9d = !_qsn9d;
//                           qsn9Controller.text =
//                               qsn9Controller.text =
//                               (_qsn9a ? txt_qsn9check1 + ", " : "") +
//                                   (_qsn9b ? txt_qsn9check2 + ", " : "") +
//                                   (_qsn9c ? txt_qsn9check3 + ", " : "") +
//                                   (_qsn9d ? txt_qsn9check4 + ", " : "") +
//                                   (_qsn9e ? txt_qsn9check5 + ", " : "") +
//                                   (_qsn9f ? txt_qsn9check6 + ", " : "");
//                           print(qsn9Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn9check4))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn9e,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn9e = !_qsn9e;
//                           qsn9Controller.text =
//                               qsn9Controller.text =
//                               (_qsn9a ? txt_qsn9check1 + ", " : "") +
//                                   (_qsn9b ? txt_qsn9check2 + ", " : "") +
//                                   (_qsn9c ? txt_qsn9check3 + ", " : "") +
//                                   (_qsn9d ? txt_qsn9check4 + ", " : "") +
//                                   (_qsn9e ? txt_qsn9check5 + ", " : "") +
//                                   (_qsn9f ? txt_qsn9check6 + ", " : "");
//                           print(qsn9Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn9check5))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn9f,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn9f = !_qsn9f;
//                           if (_qsn9f == true) {
//                             _qsn9b = false;
//                             _qsn9c = false;
//                             _qsn9d = false;
//                             _qsn9e = false;
//                             _qsn9a = false;
//                           }
//                           qsn9Controller.text =
//                               qsn9Controller.text =
//                               (_qsn9a ? txt_qsn9check1 + ", " : "") +
//                                   (_qsn9b ? txt_qsn9check2 + ", " : "") +
//                                   (_qsn9c ? txt_qsn9check3 + ", " : "") +
//                                   (_qsn9d ? txt_qsn9check4 + ", " : "") +
//                                   (_qsn9e ? txt_qsn9check5 + ", " : "") +
//                                   (_qsn9f ? txt_qsn9check6 + ", " : "");
//                           print(qsn9Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn9check6)),
//                 ],
//               ),
//               _qsn9f == true
//                   ? Padding(
//                       padding: const EdgeInsets.only(left: 40.0, right: 20),
//                       child: AppTextFormField(
//                         labelText: "Specify",
//                         controllerText: qsn9Controller,
//                         validationFunction: validateTextField,
//                         validationReg: nameValidationRegex,
//                       ),
//                     )
//                   : Container()
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   questionTen(){
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(
//             title: txt_qsn10,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn10a,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn10a = !_qsn10a;
//                           qsn10Controller.text =
//                               (_qsn10a ? txt_qsn10check1 + ", " : "") +
//                                   (_qsn10b ? txt_qsn10check2 + ", " : "") +
//                                   (_qsn10c ? txt_qsn10check3 + ", " : "") +
//                                   (_qsn10d ? txt_qsn10check4 + ", " : "") +
//                                   (_qsn10e ? txt_qsn10check5 + ", " : "") +
//                                   (_qsn10f ? txt_qsn10check6 + ", " : "");
//                           print(qsn10Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn10check1))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn10b,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn10b = !_qsn10b;
//                           qsn10Controller.text =
//                               (_qsn10a ? txt_qsn10check1 + ", " : "") +
//                                   (_qsn10b ? txt_qsn10check2 + ", " : "") +
//                                   (_qsn10c ? txt_qsn10check3 + ", " : "") +
//                                   (_qsn10d ? txt_qsn10check4 + ", " : "") +
//                                   (_qsn10e ? txt_qsn10check5 + ", " : "") +
//                                   (_qsn10f ? txt_qsn10check6 + ", " : "");
//                           print(qsn10Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn10check2))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn10c,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn10c = !_qsn10c;
//                           qsn10Controller.text =
//                               (_qsn10a ? txt_qsn10check1 + ", " : "") +
//                                   (_qsn10b ? txt_qsn10check2 + ", " : "") +
//                                   (_qsn10c ? txt_qsn10check3 + ", " : "") +
//                                   (_qsn10d ? txt_qsn10check4 + ", " : "") +
//                                   (_qsn10e ? txt_qsn10check5 + ", " : "") +
//                                   (_qsn10f ? txt_qsn10check6 + ", " : "");
//                           print(qsn10Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn10check3))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn10d,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn10d = !_qsn10d;
//                           qsn10Controller.text =
//                               (_qsn10a ? txt_qsn10check1 + ", " : "") +
//                                   (_qsn10b ? txt_qsn10check2 + ", " : "") +
//                                   (_qsn10c ? txt_qsn10check3 + ", " : "") +
//                                   (_qsn10d ? txt_qsn10check4 + ", " : "") +
//                                   (_qsn10e ? txt_qsn10check5 + ", " : "") +
//                                   (_qsn10f ? txt_qsn10check6 + ", " : "");
//                           print(qsn10Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn10check4))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn10e,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn10e = !_qsn10e;
//                           qsn10Controller.text =
//                               (_qsn10a ? txt_qsn10check1 + ", " : "") +
//                                   (_qsn10b ? txt_qsn10check2 + ", " : "") +
//                                   (_qsn10c ? txt_qsn10check3 + ", " : "") +
//                                   (_qsn10d ? txt_qsn10check4 + ", " : "") +
//                                   (_qsn10e ? txt_qsn10check5 + ", " : "") +
//                                   (_qsn10f ? txt_qsn10check6 + ", " : "");
//                           print(qsn10Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn10check5))
//                 ],
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                       value: _qsn10f,
//                       activeColor: colorLightPurple,
//                       onChanged: (value) {
//                         setState(() {
//                           _qsn10f = !_qsn10f;
//                           if (_qsn10f == true) {
//                             _qsn10b = false;
//                             _qsn10c = false;
//                             _qsn10d = false;
//                             _qsn10e = false;
//                             _qsn10a = false;
//                           }
//                           qsn10Controller.text =
//                               (_qsn10a ? txt_qsn10check1 + ", " : "") +
//                                   (_qsn10b ? txt_qsn10check2 + ", " : "") +
//                                   (_qsn10c ? txt_qsn10check3 + ", " : "") +
//                                   (_qsn10d ? txt_qsn10check4 + ", " : "") +
//                                   (_qsn10e ? txt_qsn10check5 + ", " : "") +
//                                   (_qsn10f ? txt_qsn10check6 + ", " : "");
//                           print(qsn10Controller.text);
//                         });
//                       }),
//                   Expanded(child: Text(txt_qsn10check6)),
//                 ],
//               ),
//               _qsn10f == true
//                   ? Padding(
//                 padding: const EdgeInsets.only(left: 40.0, right: 20),
//                 child: AppTextFormField(
//                   labelText: "Specify",
//                   controllerText: qsn10Controller,
//                   validationFunction: validateTextField,
//                   validationReg: nameValidationRegex,
//                 ),
//               )
//                   : Container()
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _myRadioButton(
//       {String title, int value, Function onChanged, int groupValue}) {
//     return RadioListTile(
//       value: value,
//       dense: true,
//       groupValue: groupValue,
//       onChanged: onChanged,
//       title: Text(
//         title,
//         style: TextStyle(
//           fontSize: 16,
//         ),
//       ),
//       activeColor: colorLightPurple,
//     );
//   }
// }
