import 'package:core_module/core/utils/navigation_utils.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/snippets/snack_bar_snippet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/base/base_controller.dart';
import 'package:wobisa/ui/sign_up/sign_up_set_password_screen.dart';

class SignUpVerificationController extends BaseController {
  ///A boolean value to check if the login entries are valid
  RxBool isPinValid = false.obs;

  ///A boolean notify resending of the verification code
  RxBool isResendingCode = false.obs;

  String get email => Get.arguments;
  String pin = '';

  ///Key to access the pin entry widget
  GlobalKey<PinEntryWidgetState> pinEntryKey = GlobalKey();

  ///Resend the verification code to the user email
  Future<void> onResendVerificationCodeOnClick() async {
    isResendingCode.value = true;
    await Future.delayed(const Duration(seconds: 3));
    isResendingCode.value = false;

    pinEntryKey.currentState?.clearPin();
    isPinValid.value = false;
    SnackBarSnippet().snackBarSuccess(
      "A verification code has been successfully sent to your email $email",
    );
  }

  void onCodeEntryComplete(String code) {
    pin = code;
    isPinValid.value = code.length == 6;
  }

  Future<void> onVerifyCodeOnClick() async {
    isProcessingRequest.value = true;
    await Future.delayed(const Duration(seconds: 3));
    isProcessingRequest.value = false;

    if (pin == "123456") {
      NavUtils().fireTarget(SignUpSetPasswordScreen());
    } else {
      SnackBarSnippet().snackBarToast(
        message: 'Incorrect code, please try again',
        persistent: true,
        prefixIcon: Icons.info,
      );
    }
  }
}
