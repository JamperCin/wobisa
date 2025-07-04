import 'package:core_module/core/utils/navigation_utils.dart';
import 'package:core_module/core/utils/validation_utils.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/snippets/snack_bar_snippet.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/base/base_controller.dart';
import 'package:wobisa/ui/dashboard/dash_board_screen.dart';
import 'package:wobisa/ui/sign_up/sign_up_screen.dart';

class LoginController extends BaseController {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final validationUtils = ValidationUtils();

  ///A boolean value to check if the login entries are valid
  RxBool isLoginEntriesValid = false.obs;

  ///Navigate to the sign up screen [SignUpScreen]
  void navigateToSignUp() {
    NavUtils().fireTarget(SignUpScreen());
  }

  ///Navigate to the forgot password screen [ForgotPasswordScreen]
  void onForgotPasswordOnClick() {}

  ///Validate the email and password entries upon user input
  void validateLoginEntries(String value) {
    isLoginEntriesValid.value =
        validationUtils.isValidEmailAddress(emailTextController.text) &&
        validationUtils.isStrongPassword(passwordTextController.text);
  }

  ///Make an api request to validate the user
  ///email [emailTextController] and the password [passwordTextController]
  /// Use a dummy email and password to validate and give response
  Future<void> onSignInOnClick() async {
    isProcessingRequest.value = true;
    await Future.delayed(const Duration(seconds: 3));
    isProcessingRequest.value = false;

    if (emailTextController.text == "test@email.com" &&
        passwordTextController.text == "Password123") {
      NavUtils().fireTargetOff(DashBoardScreen());
    } else {
      SnackBarSnippet().snackBarToast(
        message: 'Incorrect email or password',
        persistent: true,
        prefixIcon: Icons.info,
      );
    }

  }
}
