
//email validation
String? isEmail(String string,) {
  // Null or empty string is invalid
  if (string.isEmpty) {
    return "Email field cannot be empty";
  }

  const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final regExp = RegExp(pattern);

  if (!regExp.hasMatch(string)) {
    return "Invalid Email";
  }
  return null;
}