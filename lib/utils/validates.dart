class AppValidator {
  AppValidator._();

  static String? validateEmail(String email) {
    if (email.trim().isEmpty) {
      return 'Email không được để trống';
    }

    RegExp emailRegex = RegExp(r'^[a-zA-Z0-9]+@gmail.com$');
    if (!emailRegex.hasMatch(email)) {
      return 'Email sai định dạng';
    }

    return null;
  }

  static String? validateID(String id) {
    if (id.trim().isEmpty) {
      return 'Id không được để trống';
    }

    if (id.length > 8) {
      return 'ID không được hơn 8 kí tự';
    }

    return null;
  }
    static String? validateCode(String code) {
    if (code.trim().isEmpty) {
      return 'Code không được để trống';
    }else{
      try{
         int.parse(code);
      }catch (e) {
        return 'Code không được chứa ký tự chữ hoặc ký tự đặc biệt';
      };
    }


    return null;
  }

  static String? validateName(String name) {
    if (name.trim().isEmpty) {
      return 'Tên không được để trống';
    }

    return null;
  }

  static String? validatePhone(String name) {
    if (name.isEmpty) {
      return 'SĐT không được để trống';
    }
    if (RegExp(r'[a-zA-Z]').hasMatch(name)) {
      return "Vui lòng nhập số";
    }
    return null;
  }

  static String? validateAddres(String name) {
    if (name.isEmpty) {
      return 'Địa chỉ không được để trống';
    }

    return null;
  }

  static String? validatePassworld(String passworld) {
    if (passworld.isEmpty) {
      return 'Vui lòng nhập passwworld';
    } else if (passworld.length < 6) {
      return 'Passworld tối thiểu 6 chữ số';
    }
    return null;
  }
}
