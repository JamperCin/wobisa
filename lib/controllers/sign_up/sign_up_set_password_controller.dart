import 'package:core_module/core/utils/navigation_utils.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/base/base_controller.dart';
import 'package:wobisa/ui/sign_up/sign_up_user_info_screen.dart';

class SignUpSetPasswordController extends BaseController{
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();
  RxString passwordValue = "".obs;
  String confirmPasswordValue = "";
  RxBool isValidPassword = false.obs;
  bool isPasswordStrong = false;


//-------------------------------
  bool get hasMinLength => passwordValue.value.length >= 8;

  bool get hasUppercase => passwordValue.value.contains(RegExp(r'[A-Z]'));

  bool get hasLowercase => passwordValue.value.contains(RegExp(r'[a-z]'));

  bool get hasDigit => passwordValue.value.contains(RegExp(r'\d'));

  bool get hasSpecialChar => passwordValue.value.contains(
    RegExp(r'[!@#\$&*~%^()\-_=+{}[\]|:;"<>,.?/]'),
  );


  void onValidateEntry(String value) {
    passwordValue.value = value;
    isPasswordStrong =
        hasMinLength &&
            hasUppercase &&
            hasLowercase &&
            hasDigit &&
            hasSpecialChar;

    isValidPassword.value = value == confirmPasswordValue && isPasswordStrong;
  }

  Future<void> onSetPasswordButtonOnclick() async {
    isProcessingRequest.value = true;
    await Future.delayed(const Duration(seconds: 3));
    isProcessingRequest.value = false;
    NavUtils().fireTarget(SignUpUserInfoScreen());
  }

  void onConfirmPasswordChange(String value) {
    confirmPasswordValue = value;
    isValidPassword.value = value == passwordValue.value && isPasswordStrong;
  }
}