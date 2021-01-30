final String txt_qsn4 = "4. Place of residence";
final String txt_qsn5 = "5. Mention demography of respondent";
final String txt_qsn6 = "6. For what do you travel the most? ";

final String txt_qsn7 = "7. During the past 12 months, how often did you use the following transport mode ? ";
final String txt_qsn7sub = "(3 point scale from 1 = never; 2=1-3 days per week; 3 = at least 4 days week) ";

final String txt_qsn8 ="8. How safe or unsafe do you feel when using the following transport mode ?";
final String txt_qsn8sub ="(3 point scale from 1 = very unsafe; 2=moderately safe; 3=very safe)";


final String txt_qsn9 ="9. What are the issues you generally face while travelling on bus?";



final String txt_qsn10 ="10. Which of the following measures would improve public transportation for female travelers? ";


final String txt_qsn11 ="11. Do you find underpass and foot over bridge on the roads?";
final String txt_qsn12 ="12. Do you use underpass and foot over bridge to cross the road?";
final String txt_qsn13 ="13. How safe you feel in underpass and foot over bridge while crossing the road? ";
final String txt_qsn14 ="14. Reasons of feeling unsafe in underpass and foot over bridge or not using that";
final String txt_qsn15 ="15. Reasons for feeling unsafe while walking on the road. ";
final String txt_qsn16 ="16. Do you find waiting booth on roadsides?";
final String txt_qsn17 ="17. Do you find separate toilets for women on roadsides? ";
final String txt_qsn18 ="18. What should be 2 most important feature that you would like to have in service areas? ";
final String txt_qsn19 ="19. What is the helpline number for vehicle breakdown or any emergency on roads?";
final String txt_qsn20 ="20. For what do you generally travel the most? ";
final String txt_qsn21 ="21. During the past 12 months, how often did you use the following transport mode ?";
final String txt_qsn22 ="22. How convenient do you feel when using the following transport mode ? ";
final String txt_qsn23 ="23. What are the issues you face while travelling on bus? ";
final String txt_qsn24 ="24. Which of the following measures would improve public transportation? ";
final String txt_qsn25 ="25. Do you easily find bus stands? ";
final String txt_qsn26 ="26. Do you find elderly and differently abled friendly toilets on roadsides? ";
final String txt_qsn27 ="27. What should be three important feature that you would like to have in service areas? ";
final String txt_qsn28 ="28. Do you find underpass and foot over bridge on the roads? ";
final String txt_qsn29 ="29. Do foot over bridges and underpasses have lift/ramps? ";
final String txt_qsn30 ="30. What difficulties you face while driving ? ";
final String txt_qsn31 ="31. What difficulties you face while crossing the roads? ";
final String txt_qsn32 ="32. Is the time provided in pedestrian traffic lights/traffic police sufficient for crossing the roads? ";
final String txt_qsn33 ="33. Are traffic rules/government guidelines for differently abled helpful ? ";
final String txt_qsn34 ="34. Are signage for different abled properly placed?•";
final String txt_qsn35 ="35. For what do you generally travel the most? ";
final String txt_qsn36 ="36. During the past 12 months, how often did you use the following transport mode ?";
final String txt_qsn37 ="37. How good is the roads in your nearby area? ";
final String txt_qsn38 ="38. What is the condition of roads during rainy season?";
final String txt_qsn39 ="39. What happens when someone meets with an accident?";
final String txt_qsn40 ="40. How much time does it take to reach hospital?";
final String txt_qsn41 ="41. What spoils the road quality most in your area? ";




//validation
const String kTermsConditionsMsg = "Please confirm Terms and Policies";
const String kRequiredField ="Required Field";
const String kInvalidLength = "Invalid Length";
const String kInvalidPanLength = "Pan number must be of 9 digits";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kInvalidPassLength = "Password length must be greater than 8.";
const String kPassMisMatch = "Password mismatch";
const String kInvalidMobNum = "Mobile Number must be of 10 digits";
const String kInvalidFormat = "Only number is accepted";



//email validation regex
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
//checks at least one digit, one uppercase letter, one lowercase letter and one special letter
final RegExp advancedPassValidation =
RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
//accepts text with spaces for FirstName and LastName
final RegExp nameValidationRegex = RegExp(r'[a-zA-Z]+|\s');
//only accepts number for MobileNumber and Recovery Code
final RegExp numberValidationRegex = RegExp(r'^\d+\.?\d*');
final RegExp newNumberValidateRegex =RegExp( r'^(?:[+0]9)?[0-9]{10}$');
// checks spaces and fullstops for password and confirm password
final RegExp passwordValidationRegex = RegExp(r'\.|\s|\,');