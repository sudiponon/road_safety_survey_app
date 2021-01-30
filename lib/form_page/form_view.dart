import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/form_page/form_controller.dart';
import 'package:road_safety_survey/form_page/question_fourteen.dart';
import 'package:road_safety_survey/form_page/wdgets/question_eight.dart';
import 'package:road_safety_survey/form_page/wdgets/question_eighteen.dart';
import 'package:road_safety_survey/form_page/wdgets/question_eleven.dart';
import 'package:road_safety_survey/form_page/wdgets/question_fifteen.dart';
import 'package:road_safety_survey/form_page/wdgets/question_five.dart';
import 'package:road_safety_survey/form_page/wdgets/question_forty.dart';
import 'package:road_safety_survey/form_page/wdgets/question_fortyone.dart';
import 'package:road_safety_survey/form_page/wdgets/question_four.dart';
import 'package:road_safety_survey/form_page/wdgets/question_nine.dart';
import 'package:road_safety_survey/form_page/wdgets/question_nineteen.dart';
import 'package:road_safety_survey/form_page/wdgets/question_seven.dart';
import 'package:road_safety_survey/form_page/wdgets/question_seventeen.dart';
import 'package:road_safety_survey/form_page/wdgets/question_six.dart';
import 'package:road_safety_survey/form_page/wdgets/question_sixteen.dart';
import 'package:road_safety_survey/form_page/wdgets/question_ten.dart';
import 'package:road_safety_survey/form_page/wdgets/question_thirteen.dart';
import 'package:road_safety_survey/form_page/wdgets/question_thirtyfive.dart';
import 'package:road_safety_survey/form_page/wdgets/question_thirtyfour.dart';
import 'package:road_safety_survey/form_page/wdgets/question_thirtynine.dart';
import 'package:road_safety_survey/form_page/wdgets/question_thirtytwo.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twelve.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twenty.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twentyeight.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twentyfive.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twentyfour.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twentynine.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twentyseven.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twentysix.dart';
import 'package:road_safety_survey/form_page/wdgets/question_twentythree.dart';
import 'package:road_safety_survey/widgets/app_text.dart';
import 'package:road_safety_survey/widgets/app_text_form_field.dart';

class FormView extends View {
  @override
  State<StatefulWidget> createState() => FormViewState(FormViewController());
}

class FormViewState extends ViewState<FormView, FormViewController> {

  int newValue = -1;
  FormViewController controller;
  int groupValue4 = -1;
  int groupValue5 = -1;
  int _groupValue6 = -1;
  int _groupValue7a = -1;
  int _groupValue7b = -1;
  int _groupValue7c = -1;
  int _groupValue7d = -1;
  int _groupValue7e = -1;
  int _groupValue7f = -1;
  int _groupValue7g = -1;
  int _groupValue7h = -1;
  int _groupValue7i = -1;
  int _groupValue7j = -1;

  int _groupValue8a = -1;
  int _groupValue8b = -1;
  int _groupValue8c = -1;
  int _groupValue8d = -1;
  int _groupValue8e = -1;
  int _groupValue8f = -1;
  int _groupValue8g = -1;
  int _groupValue8h = -1;
  int _groupValue8i = -1;
  int _groupValue8j = -1;

  bool _qsn9a = false;
  bool _qsn9b = false;
  bool _qsn9c = false;
  bool _qsn9d = false;
  bool _qsn9e = false;
  bool _qsn9f = false;

  bool _qsn10a = false;
  bool _qsn10b = false;
  bool _qsn10c = false;
  bool _qsn10d = false;
  bool _qsn10e = false;
  bool _qsn10f = false;

  int _groupValue11 = -1;
  int _groupValue12 = -1;
  int _groupValue13 = -1;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = new TextEditingController();

  TextEditingController phoneController = new TextEditingController();

  TextEditingController ageController = new TextEditingController();

  TextEditingController qsn4Controller = new TextEditingController();
  TextEditingController qsn5Controller = new TextEditingController();
  TextEditingController qsn6Controller = new TextEditingController();

  TextEditingController qsn7aController = new TextEditingController();
  TextEditingController qsn7bController = new TextEditingController();
  TextEditingController qsn7cController = new TextEditingController();
  TextEditingController qsn7dController = new TextEditingController();
  TextEditingController qsn7eController = new TextEditingController();
  TextEditingController qsn7fController = new TextEditingController();
  TextEditingController qsn7gController = new TextEditingController();
  TextEditingController qsn7hController = new TextEditingController();
  TextEditingController qsn7iController = new TextEditingController();
  TextEditingController qsn7jController = new TextEditingController();

  TextEditingController qsn8aController = new TextEditingController();
  TextEditingController qsn8bController = new TextEditingController();
  TextEditingController qsn8cController = new TextEditingController();
  TextEditingController qsn8dController = new TextEditingController();
  TextEditingController qsn8eController = new TextEditingController();
  TextEditingController qsn8fController = new TextEditingController();
  TextEditingController qsn8gController = new TextEditingController();
  TextEditingController qsn8hController = new TextEditingController();
  TextEditingController qsn8iController = new TextEditingController();
  TextEditingController qsn8jController = new TextEditingController();

  TextEditingController qsn9Controller = new TextEditingController();
  TextEditingController qsn10Controller = new TextEditingController();
  TextEditingController qsn11Controller = new TextEditingController();
  TextEditingController qsn12Controller = new TextEditingController();
  TextEditingController qsn13Controller = new TextEditingController();

  @override
  void initViewState(FormViewController controller) {
    this.controller = controller;
    qsn5Controller = new TextEditingController();
    qsn5Controller.text = "s";
  }

  FormViewState(FormViewController controller) : super(controller);

  @override
  Widget get view => Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: AppText(
          title: "Data Entry Form",
          textColor: Colors.white,
          allCaps: true,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        centerTitle: true,
        backgroundColor: baseColor,
      ),
      body: getMain());

  Widget getMain() {
    return ControlledWidgetBuilder<FormViewController>(builder: (context, controller) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              color: formContainerColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: AppText(
                        title: "Road Safety Survey",
                        textAlign: TextAlign.center,
                        fontSize: 25,
                        textColor: baseColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppText(
                      title: "This survey is specially designed for female,"
                          " old, differently abled and people residing "
                          "in remote areas. ",
                      textAlign: TextAlign.center,
                      fontSize: 16,
                      textColor: baseColor,
                      fontWeight: FontWeight.normal,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: AppTextFormField(
                          labelText: "1. Name", controllerText: controller.nameController),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: AppTextFormField(
                          labelText: "2. Contact Number",
                          inputType: TextInputType.phone,
                          isNumOnly: true,
                          controllerText: controller.phoneController),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: AppTextFormField(
                        labelText: "3. Age",
                        controllerText: controller.ageController,
                        isNumOnly: true,
                        inputType: TextInputType.phone,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // QuestionFour(groupValue4, qsn4Controller),
                    QuestionFour(),
                    // QuestionFive(groupValue5: newValue,qsn5Controller: qsn5Controller,callBack: (value){
                    //   print('value:$value');
                    // setState(() {
                    //   newValue = value;
                    // });
                    // }, ),
                    QuestionFive(),

                    controller.groupValue5==0?questionSixtoTwenty():Container(),
                    Container(
                      height: 45,
                      width: double.infinity,
                      child: FlatButton(
                          color: colorLightPurple,
                          onPressed: () {
                            // print(nameController.text);
                            // print(phoneController.text);
                            // print(ageController.text);
                            // print(qsn4Controller.text);
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget questionSixtoTwenty() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: "Female Respondents",
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          QuestionSix(),
          // QuestionSeven(),
          QuestionEight(
              _groupValue8a,
              _groupValue8b,
              _groupValue8c,
              _groupValue8d,
              _groupValue8e,
              _groupValue8f,
              _groupValue8g,
              _groupValue8h,
              _groupValue8i,
              _groupValue8j,
              qsn8aController,
              qsn8bController,
              qsn8cController,
              qsn8dController,
              qsn8eController,
              qsn8fController,
              qsn8gController,
              qsn8hController,
              qsn8iController,
              qsn8jController),
          QuestionNine(
              _qsn9a, _qsn9b, _qsn9c, _qsn9d, _qsn9e, _qsn9f, qsn9Controller),
          QuestionTen(_qsn10a, _qsn10b, _qsn10c, _qsn10d, _qsn10e, _qsn10f,
              qsn10Controller),
          QuestionEleven(),
          QuestionTwelve(),
          QuestionThirteen(),
          QuestionFourteen(),
          QuestionFifteen(),
          QuestionSixteen(),
          QuestionSeventeen(),
          QuestionEighteen(),
          QuestionNineteen(),
          QuestionTwenty(),
          QuestionTwentyThree(),
          QuestionTwentyFour(),
          QuestionTwentyFive(),
          QuestionTwentySix(),
          QuestionTwentySeven(),
          QuestionTwentyEight(),
          QuestionTwentyNine(),
          QuestionThirtyTwo(),
          QuestionThirtyFour(),
          QuestionThirtyFive(),
          QuestionThirtyNine(),
          QuestionForty(),
          QuestionFortyOne(),

        ],
      ),
    );
  }
}
