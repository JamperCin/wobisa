import 'package:core_module/core/utils/navigation_utils.dart';
import 'package:core_module/core/utils/validation_utils.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/base/base_controller.dart';
import 'package:wobisa/ui/sign_up/sign_up_screen.dart';
import 'package:wobisa/ui/sign_up/sign_up_verification_screen.dart';

class SignUpController extends BaseController {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final validationUtils = ValidationUtils();

  ///A boolean value to check if the login entries are valid
  RxBool isLoginEntriesValid = false.obs;


  ///Make an api request to validate the user email [emailTextController]
  ///Send a 6-digit code to the user email for verification and navigate to [SignUpVerificationScreen]
  Future<void> onSignUpOnClick() async {
    isProcessingRequest.value = true;
    await Future.delayed(const Duration(seconds: 3));
    isProcessingRequest.value = false;

    NavUtils().fireTarget(
      SignUpVerificationScreen(),
      model: emailTextController.text,
    );
  }

  ///Navigate to the sign in screen [SignUpScreen]
  void navigateToSignIn() {
    NavUtils().fireBack();
  }

  void validateEntries(String value) {
    isLoginEntriesValid.value = validationUtils.isValidEmailAddress(value);
  }

  void onTermsAndConditionsOnClick() {
  }
}
