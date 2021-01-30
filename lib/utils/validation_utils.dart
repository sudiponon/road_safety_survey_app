
import 'package:road_safety_survey/constants/string.dart';

extension on String {
  bool hasEqualLength(int value){
    return this.length == value;
  }
  bool hasLessLength(int value){
    return this.length < value;
  }
  bool hasRangeValue(int lowerValue,upperValue){
    return this.length>=lowerValue && this.length<=upperValue;
  }
}


isNull(dynamic obj) {
  return (obj == null);
}

isNotNull(dynamic obj) {
  return (obj != null);
}

bool isEmpty(String text) {
  return text.trim().isEmpty;
}

String validateRangeValue(String value,{int lowerRange,int higherRange,String errorMsg}){
  validateTextField(value,errorMsg: errorMsg);
  if( !value.hasRangeValue(lowerRange,higherRange)) return kInvalidLength;
  return null;

}

String validateTextField(String value, {String errorMsg}) {
  if (value.trim().isEmpty) return errorMsg ?? kRequiredField;
  return null;
}
String validateEmailField(String value, {String errorMsg}) {
  if(value == null) return null;
  if (value!=null&&!emailValidatorRegExp.hasMatch(value)) return errorMsg ?? kInvalidEmailError;
  return null;
}
String validateMobileLengthField(String value, {String errorMsg}) {
  validateTextField(value,errorMsg: errorMsg);
 if( !value.hasEqualLength(10)) return kInvalidLength;
  return null;
}

String validateDropDown(value){
  if(value == null) return kRequiredField;
  return null;
}

String validatePaymentCodeLengthField(String value, {String errorMsg}) {
  validateTextField(value,errorMsg: errorMsg);
  if( !value.hasRangeValue(1,50)) return kInvalidLength;
  return null;
}

String validatePhoneLengthField(String value, {String errorMsg}) {
  validateTextField(value,errorMsg: errorMsg);
  if( !value.hasRangeValue(7,10)) return kInvalidLength;
  if(!numberValidationRegex.hasMatch(value)) return kInvalidFormat;
  return null;
}
String validatePanLengthField(String value, {String errorMsg}) {
  validateTextField(value,errorMsg: errorMsg);
  if( !value.hasEqualLength(9)) return kInvalidLength;
  if(!numberValidationRegex.hasMatch(value)) return kInvalidFormat;
  return null;
}
String validateWardLengthField(String value, {String errorMsg}) {
  validateTextField(value,errorMsg: errorMsg);
  if( !value.hasLessLength(5)) return kInvalidLength;
  if(!numberValidationRegex.hasMatch(value)) return kInvalidFormat;
  return null;
}
// String validateCitizenshipLengthField(String value, {String errorMsg}) {
//   validateTextField(value,errorMsg: errorMsg);
//   if( !value.hasRangeValue(5,20)) return kInvalidLength;
//   if(!numberValidationRegex.hasMatch(value)) return kInvalidFormat;
//   return null;
// }
String validateRegistrationNumLengthField(String value, {String errorMsg}) {
  validateTextField(value,errorMsg: errorMsg);
  if( !value.hasRangeValue(5,15)) return kInvalidLength;
  if(!numberValidationRegex.hasMatch(value)) return kInvalidFormat;
  return null;
}
String validatePasswordField(String value, {String errorMsg}) {
  validateTextField(value,errorMsg: errorMsg);
  if(value.hasLessLength(9)) return kInvalidPassLength;
  return null;
}
String validateConfirmPasswordField(String valueOne,String valueTwo,{String errorMsg}) {
  validateTextField(valueOne,errorMsg: errorMsg);
  if(valueOne.hasLessLength(7)) return kInvalidPassLength;
  if(valueOne!=valueTwo) return kPassMisMatch;
  return null;
}

