class FieldValidator{

static String? validateEmail(String? value){
  String pattern = r'[a-z0-9]+@[a-z]+\.[a-z]{2,3}';
  RegExp regExp = RegExp(pattern);
  if(value!.isEmpty){
    return "E-mail cannot be empty";
  }
  else if(!regExp.hasMatch(value)){
    return "Enter valid E-mail";
  }
  return null;
}

static String? validatePhone(String? value){
  String pattern = r'(^[0-9]*$)';
  RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return "Phone number cannot be empty";
  }
  else if (!regExp.hasMatch(value)) {
    return "Phone number must be numeric digits only";
  }
  else if (value.length != 10) {
    return "Phone number has to be 10 digits";
  }
  return null;
}

static String? validatePassword(String? value){
  String passwordpattern = r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$';
  RegExp passwordregExp = RegExp(passwordpattern);
  if(value!.isEmpty){
    return "Password cannot be empty";
  }
  else if(!passwordregExp.hasMatch(value)){
    return "Password must have minimum eight characters, at least one\n letter, one number and one special character";
  }
  return null;
}

}