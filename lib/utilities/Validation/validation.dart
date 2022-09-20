

bool checkUpperCaseLetter(String username){
  var regexUppercaseLetter = RegExp(r'["A-Z"]');

  return regexUppercaseLetter.hasMatch(username);
}

bool checkLength(int minimumLength , int valueLength){

  if(valueLength >= minimumLength){
    return true;
  }else{
    return false;
  }
}

bool checkAlphaNumberic(String password){
  
  var regexAplhaOnly = RegExp('[a-zA-Z]');
  var regexNumberOnly = RegExp('[0-9]');

  if(regexAplhaOnly.hasMatch(password) == true && regexNumberOnly.hasMatch(password) == true){
    return true;
  }else{
    return false;
  }
}