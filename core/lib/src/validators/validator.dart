class Validator {
  static String? validateEmail(
    String? email,
  ) {
    final RegExp _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+[a-zA-Z]",
    );

    if (email == null || email.isEmpty) {
      return 'Email is required';
    } else if (!_emailRegExp.hasMatch(email)) {
      return 'Email contains invalid characters';
    }

    return null;
  }
}
