import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:road_safety_survey/constants/constants.dart';
import 'package:road_safety_survey/database/db_helpers.dart';
import 'package:road_safety_survey/model/uer_model.dart';

class FormViewController extends Controller {

  Future<List<User>> user;

  List<User> testUsers;

  var dbHelper;
  bool isUpdating;
  int curUserId;

  int groupValue4 = -1;
  String qsn4Answer;

  int groupValue5 = -1;
  String qsn5Answer;

  int groupValue6 = -1;
  String qsn6Answer;

  int groupValue7a = -1;
  int groupValue7b = -1;
  int groupValue7c = -1;
  int groupValue7d = -1;
  int groupValue7e = -1;
  int groupValue7f = -1;
  int groupValue7g = -1;
  int groupValue7h = -1;
  int groupValue7i = -1;
  int groupValue7j = -1;

  int groupValue8a = -1;
  int groupValue8b = -1;
  int groupValue8c = -1;
  int groupValue8d = -1;
  int groupValue8e = -1;
  int groupValue8f = -1;
  int groupValue8g = -1;
  int groupValue8h = -1;
  int groupValue8i = -1;
  int groupValue8j = -1;

  bool qsn9a = false;
  bool qsn9b = false;
  bool qsn9c = false;
  bool qsn9d = false;
  bool qsn9e = false;
  bool qsn9f = false;

  bool qsn10a = false;
  bool qsn10b = false;
  bool qsn10c = false;
  bool qsn10d = false;
  bool qsn10e = false;
  bool qsn10f = false;

  bool qsn14a = false;
  bool qsn14b = false;
  bool qsn14c = false;
  bool qsn14d = false;

  bool qsn18a = false;
  bool qsn18b = false;
  bool qsn18c = false;
  bool qsn18d = false;
  bool qsn18e = false;

  bool qsn19a = false;
  bool qsn19b = false;
  bool qsn19c = false;

  bool qsn23a = false;
  bool qsn23b = false;
  bool qsn23c = false;
  bool qsn23d = false;
  bool qsn23e = false;
  bool qsn23f = false;
  bool qsn23g = false;

  bool qsn24a = false;
  bool qsn24b = false;
  bool qsn24c = false;
  bool qsn24d = false;
  bool qsn24e = false;
  bool qsn24f = false;

  bool qsn27a = false;
  bool qsn27b = false;
  bool qsn27c = false;
  bool qsn27d = false;
  bool qsn27e = false;

  bool qsn30a = false;
  bool qsn30b = false;
  bool qsn30c = false;
  bool qsn30d = false;
  bool qsn30e = false;
  bool qsn30f = false;
  bool qsn30g = false;
  bool qsn30h = false;
  bool qsn30i = false;

  bool qsn31a = false;
  bool qsn31b = false;
  bool qsn31c = false;
  bool qsn31d = false;
  bool qsn31e = false;

  int groupValue11 = -1;
  String qsn11Answer;

  int groupValue12 = -1;
  String qsn12Answer;

  int groupValue13 = -1;
  String qsn13Answer;

  int groupValue15 = -1;
  String qsn15Answer;

  int groupValue16 = -1;
  String qsn16Answer;

  int groupValue17 = -1;
  String qsn17Answer;

  int groupValue20 = -1;
  String qsn20Answer;

  int groupValue25 = -1;
  String qsn25Answer;

  int groupValue26 = -1;
  String qsn26Answer;

  int groupValue28 = -1;
  String qsn28Answer;

  int groupValue29 = -1;
  String qsn29Answer;

  int groupValue32 = -1;
  String qsn32Answer;

  int groupValue33 = -1;

  int groupValue34 = -1;
  String qsn34Answer;

  int groupValue35 = -1;
  String qsn35Answer;

  int groupValue37 = -1;

  int groupValue38 = -1;

  int groupValue39 = -1;
  String qsn39Answer;

  int groupValue40 = -1;
  String qsn40Answer;

  int groupValue41 = -1;
  String qsn41Answer;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = new TextEditingController();

  TextEditingController phoneController = new TextEditingController();

  TextEditingController ageController = new TextEditingController();

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

  TextEditingController qsn14Controller = new TextEditingController();
  TextEditingController qsn18Controller = new TextEditingController();
  TextEditingController qsn19Controller = new TextEditingController();
  TextEditingController qsn23Controller = new TextEditingController();
  TextEditingController qsn24Controller = new TextEditingController();

  TextEditingController qsn26Controller = new TextEditingController();

  TextEditingController qsn27Controller = new TextEditingController();
  TextEditingController qsn30Controller = new TextEditingController();
  TextEditingController qsn31Controller = new TextEditingController();

  TextEditingController qsn35Controller = new TextEditingController();

  TextEditingController qsn39Controller = new TextEditingController();

  TextEditingController qsn41Controller = new TextEditingController();

  final GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

  @override
  void initListeners() {
    nameController = new TextEditingController();
    phoneController = new TextEditingController();
    ageController = new TextEditingController();
    dbHelper = DBHelper();
    isUpdating = false;
    getFormData();
    // TODO: implement onInitState
    super.onInitState();
  }

  // Class ajeebAnswer = new Class Answers();
  // ajeebAnswer.setqn1a(ans0n);


  void ans4(value) {
    if (value == ans0n) {
      qsn4Answer = text_qsn4a;
      groupValue4 = value;
      print(qsn4Answer);
    } else if (value == ans1n) {
      qsn4Answer = text_qsn4b;
      groupValue4 = value;

      print(qsn4Answer);
    } else if (value == ans2n) {
      qsn4Answer = text_qsn4c;
      groupValue4 = value;

      print(qsn4Answer);
    } else if (value == ans3n) {
      qsn4Answer = text_qsn4d;
      groupValue4 = value;

      print(qsn4Answer);
    } else if (value == ans4n) {
      qsn4Answer = text_qsn4e;
      groupValue4 = value;

      print(qsn4Answer);
    } else if (value == ans5n) {
      qsn4Answer = text_qsn4f;
      groupValue4 = value;

      print(qsn4Answer);
    } else if (value == ans6n) {
      qsn4Answer = text_qsn4g;
      groupValue4 = value;

      print(qsn4Answer);}
    refreshUI();

  }

  void ans5(value){
    if (value == ans0n) {
      qsn5Answer = text_qsn5a;
      groupValue5 = value;
      print(qsn5Answer);
    } else if (value == ans1n) {
      qsn5Answer = text_qsn5b;
      groupValue5 = value;

      print(qsn5Answer);
    } else if (value == ans2n) {
      qsn5Answer = text_qsn5c;
      groupValue5 = value;

      print(qsn5Answer);
    } else if (value == ans3n) {
      qsn5Answer = text_qsn5d;
      groupValue5 = value;

      print(qsn5Answer);
    }
    refreshUI();
  }
  void ans6(value){
    if (value == ans0n) {
      qsn6Answer = text_qsn6a;
      groupValue6 = value;
      print(qsn6Answer);
    } else if (value == ans1n) {
      qsn6Answer = text_qsn6b;
      groupValue6 = value;

      print(qsn6Answer);
    } else if (value == ans2n) {
      qsn6Answer = text_qsn6c;
      groupValue6 = value;

      print(qsn6Answer);
    } else if (value == ans3n) {
      qsn6Answer = qsn6Controller.text;
      groupValue6 = value;

      print(qsn6Answer);
    }
    refreshUI();
  }

  // void ans7(value){
  //   if (value == ans0n) {
  //     qsn7Answer = text_qsn7a;
  //     groupValue7 = value;
  //     print(qsn7Answer);
  //   } else if (value == ans1n) {
  //     qsn7Answer = text_qsn7b;
  //     groupValue7 = value;
  //
  //     print(qsn7Answer);
  //   } else if (value == ans2n) {
  //     qsn7Answer = text_qsn7c;
  //     groupValue7 = value;
  //
  //     print(qsn7Answer);
  //   }
  //   refreshUI();
  // }

  void ans11(value){
    if (value == ans0n) {
      qsn11Answer = text_qsn11a;
      groupValue11 = value;
      print(qsn11Answer);
    } else if (value == ans1n) {
      qsn11Answer = text_qsn11b;
      groupValue11 = value;

      print(qsn11Answer);
    } else if (value == ans2n) {
      qsn11Answer = text_qsn11c;
      groupValue11 = value;

      print(qsn11Answer);
    }
    refreshUI();
  }

  void ans12(value){
    if (value == ans0n) {
      qsn12Answer = text_qsn12a;
      groupValue12 = value;
      print(qsn12Answer);
    } else if (value == ans1n) {
      qsn12Answer = text_qsn12b;
      groupValue12 = value;

      print(qsn12Answer);
    } else if (value == ans2n) {
      qsn12Answer = text_qsn12c;
      groupValue12 = value;

      print(qsn12Answer);
    }
    refreshUI();
  }

  void ans13(value){
    if (value == ans0n) {
      qsn13Answer = text_qsn13a;
      groupValue13 = value;
      print(qsn13Answer);
    } else if (value == ans1n) {
      qsn13Answer = text_qsn13b;
      groupValue13 = value;

      print(qsn13Answer);
    } else if (value == ans2n) {
      qsn13Answer = text_qsn13c;
      groupValue13 = value;

      print(qsn13Answer);
    }
    refreshUI();
  }


  void ans15(value){
    if (value == ans0n) {
      qsn15Answer = text_qsn15a;
      groupValue15 = value;
      print(qsn15Answer);
    } else if (value == ans1n) {
      qsn15Answer = text_qsn15b;
      groupValue15 = value;

      print(qsn15Answer);
    } else if (value == ans2n) {
      qsn15Answer = text_qsn15c;
      groupValue15 = value;

      print(qsn15Answer);
    }else if (value == ans3n) {
      qsn15Answer = text_qsn15d;
      groupValue15 = value;

      print(qsn15Answer);
    }
    refreshUI();
  }

  void ans16(value){
    if (value == ans0n) {
      qsn16Answer = text_qsn16a;
      groupValue16 = value;
      print(qsn16Answer);
    } else if (value == ans1n) {
      qsn16Answer = text_qsn16b;
      groupValue16 = value;

      print(qsn16Answer);
    } else if (value == ans2n) {
      qsn16Answer = text_qsn16c;
      groupValue16 = value;

      print(qsn16Answer);
    }else if (value == ans3n) {
      qsn16Answer = text_qsn16d;
      groupValue16 = value;

      print(qsn16Answer);
    }
    refreshUI();
  }

  void ans17(value){
    if (value == ans0n) {
      qsn17Answer = text_qsn17a;
      groupValue17 = value;
      print(qsn17Answer);
    } else if (value == ans1n) {
      qsn17Answer = text_qsn17b;
      groupValue17 = value;

      print(qsn17Answer);
    } else if (value == ans2n) {
      qsn17Answer = text_qsn17c;
      groupValue17 = value;

      print(qsn17Answer);
    }
    refreshUI();
  }

  void ans20(value){
    if (value == ans0n) {
      qsn20Answer = text_qsn20a;
      groupValue20 = value;
      print(qsn20Answer);
    } else if (value == ans1n) {
      qsn20Answer = text_qsn20b;
      groupValue20 = value;

      print(qsn20Answer);
    } else if (value == ans2n) {
      qsn20Answer = text_qsn20c;
      groupValue20 = value;

      print(qsn20Answer);
    }else if (value == ans3n) {
      qsn20Answer = text_qsn20d;
      groupValue20 = value;

      print(qsn20Answer);
    }
    refreshUI();
  }

  void ans25(value){
    if (value == ans0n) {
      qsn25Answer = text_qsn25a;
      groupValue25 = value;
      print(qsn25Answer);
    } else if (value == ans1n) {
      qsn25Answer = text_qsn25b;
      groupValue25 = value;

      print(qsn25Answer);
    } else if (value == ans2n) {
      qsn25Answer = text_qsn25c;
      groupValue25 = value;

      print(qsn25Answer);
    }
    refreshUI();
  }

  void ans26(value){
    if (value == ans0n) {
      qsn26Answer = text_qsn26a;
      groupValue26 = value;
      print(qsn26Answer);
    } else if (value == ans1n) {
      qsn26Answer = text_qsn26b;
      groupValue26 = value;

      print(qsn26Answer);
    } else if (value == ans2n) {
      qsn26Answer = text_qsn26c;
      groupValue26 = value;

      print(qsn26Answer);
    }else if (value == ans3n) {
      qsn26Answer = qsn26Controller.text;
      groupValue26 = value;

      print(qsn26Answer);
    }
    refreshUI();
  }

  void ans28(value){
    if (value == ans0n) {
      qsn28Answer = text_qsn28a;
      groupValue28 = value;
      print(qsn28Answer);
    } else if (value == ans1n) {
      qsn28Answer = text_qsn28b;
      groupValue28 = value;

      print(qsn28Answer);
    } else if (value == ans2n) {
      qsn28Answer = text_qsn28c;
      groupValue28 = value;

      print(qsn28Answer);
    }
    refreshUI();
  }
  void ans29(value){
    if (value == ans0n) {
      qsn29Answer = text_qsn29a;
      groupValue29 = value;
      print(qsn29Answer);
    } else if (value == ans1n) {
      qsn29Answer = text_qsn29b;
      groupValue29 = value;

      print(qsn29Answer);
    } else if (value == ans2n) {
      qsn29Answer = text_qsn29c;
      groupValue29 = value;

      print(qsn29Answer);
    }
    refreshUI();
  }

  void ans32(value){
    if (value == ans0n) {
      qsn32Answer = text_qsn32a;
      groupValue32 = value;
      print(qsn32Answer);
    } else if (value == ans1n) {
      qsn32Answer = text_qsn32b;
      groupValue32 = value;

      print(qsn32Answer);
    }
    refreshUI();
  }

  void ans34(value){
    if (value == ans0n) {
      qsn34Answer = text_qsn34a;
      groupValue34 = value;
      print(qsn34Answer);
    } else if (value == ans1n) {
      qsn34Answer = text_qsn34b;
      groupValue34 = value;

      print(qsn34Answer);
    }
    refreshUI();
  }

  void ans35(value) {
    if (value == ans0n) {
      qsn35Answer = text_qsn35a;
      groupValue35 = value;
      print(qsn35Answer);
    } else if (value == ans1n) {
      qsn35Answer = text_qsn35b;
      groupValue35 = value;

      print(qsn35Answer);
    } else if (value == ans2n) {
      qsn35Answer = text_qsn35c;
      groupValue35 = value;

      print(qsn35Answer);
    } else if (value == ans3n) {
      qsn35Answer = text_qsn35d;
      groupValue35 = value;

      print(qsn35Answer);
    } else if (value == ans4n) {

      qsn35Answer = qsn35Controller.text;
      groupValue35 = value;

      print(qsn35Answer);
    }
    refreshUI();

  }

  void ans39(value){
    if (value == ans0n) {
      qsn39Answer = text_qsn39a;
      groupValue39 = value;
      print(qsn39Answer);
    } else if (value == ans1n) {
      qsn39Answer = text_qsn39b;
      groupValue39 = value;

      print(qsn39Answer);
    } else if (value == ans2n) {
      qsn39Answer = text_qsn39c;
      groupValue39 = value;

      print(qsn39Answer);
    }else if (value == ans3n) {
      qsn39Answer = qsn39Controller.text;
      groupValue39 = value;
      print(qsn39Answer);
    }
    refreshUI();
  }

  void ans40(value){
    if (value == ans0n) {
      qsn40Answer = text_qsn40a;
      groupValue40 = value;
      print(qsn40Answer);
    } else if (value == ans1n) {
      qsn40Answer = text_qsn40b;
      groupValue40 = value;

      print(qsn40Answer);
    } else if (value == ans2n) {
      qsn40Answer = text_qsn40c;
      groupValue40 = value;

      print(qsn40Answer);
    }else if (value == ans3n) {
      qsn40Answer = text_qsn40d;
      groupValue40 = value;
      print(qsn40Answer);
    }
    refreshUI();
  }

  void ans41(value){
    if (value == ans0n) {
      qsn41Answer = text_qsn41a;
      groupValue41 = value;
      print(qsn41Answer);
    } else if (value == ans1n) {
      qsn41Answer = text_qsn41b;
      groupValue41 = value;

      print(qsn41Answer);
    } else if (value == ans2n) {
      qsn41Answer = text_qsn41c;
      groupValue41 = value;

      print(qsn41Answer);
    }else if (value == ans3n) {
      qsn41Answer = qsn41Controller.text;
      groupValue41 = value;
      print(qsn41Answer);
    }
    refreshUI();
  }

  void getFormData() {
    user = dbHelper.getUsers();
    user.then((value)  { print(value[0].name);
    testUsers = value;
    // nameController.text = value[0].name;
    // print(value[0].groupValue33);
    // groupValue33 = value[0].groupValue33;
    value.forEach((element) {
      nameController.text = element.name;
      phoneController.text = element.phone;
      ageController.text = element.age;
    });
    refreshUI();
    });
    // user.then((value) => value['name']);
    print(user);
  }

  void saveFormData() {
    User e = User(curUserId, 
      nameController.text, 
      phoneController.text,
      ageController.text,
      qsn4Answer,
      qsn5Answer,
        qsn6Answer,
        qsn11Answer,
        qsn12Answer,
        qsn13Answer,
        qsn15Answer ,
            qsn16Answer ,
            qsn17Answer ,
            qsn20Answer ,
            qsn25Answer ,
            qsn26Answer ,
            qsn28Answer ,
            qsn29Answer ,
            qsn32Answer ,
            groupValue33 ,
            qsn34Answer ,
            qsn35Answer ,
            groupValue37 ,
            groupValue38 ,
            qsn39Answer ,
            qsn40Answer ,
            qsn41Answer ,
      
    );
    dbHelper.save(e);
    print("save successful");
  }

  void deleteFormData() {}

  void updateFormData() {}

  void refresh() {
    refreshUI();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
