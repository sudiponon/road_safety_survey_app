import 'package:flutter/material.dart';
import 'package:road_safety_survey/constants/color.dart';
import 'package:road_safety_survey/form_page/form_view.dart';
import 'package:road_safety_survey/form_page/road_survey_form.dart';
import 'package:road_safety_survey/widgets/app_text.dart';

class RoadSafetySurvey extends StatefulWidget {
  @override
  _RoadSafetySurveyState createState() => _RoadSafetySurveyState();
}

class _RoadSafetySurveyState extends State<RoadSafetySurvey> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: AppText(
            title: "Road Safety Survey",
            textColor: Colors.white,
            allCaps: true,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
          centerTitle: true,
          backgroundColor: baseColor,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: baseColor,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FormView()));
          },
        ),
      ),
    );
  }
}
