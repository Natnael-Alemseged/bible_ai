class Validator {
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'Email is required';
    }
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!regex.hasMatch(email)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String password) {
    if (password.length < 8) {
      print(password.length);
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String phoneNumber) {
    final regex = RegExp(r'^\+?\d{10,15}$');
    if (!regex.hasMatch(phoneNumber)) {
      return 'Invalid phone number';
    }
    return null;
  }

  static String? validateNotEmpty(String value, String fieldName) {
    if (value.trim().isEmpty) {
      return '$fieldName cannot be empty';
    }
    return null;
  }

  static String? validateDropdown(dynamic value, String fieldName) {
    if (value == null || value.toString().isEmpty) {
      return 'Please select a $fieldName';
    }
    return null;
  }

  static String? validateDate(DateTime? date) {
    if (date == null) {
      return 'Please select a release date';
    }
    return null;
  }

  static String? validateFileUpload(String? filePath, String fileType) {
    if (filePath == null || filePath.isEmpty) {
      return 'Please upload a $fileType';
    }
    return null;
  }
}
