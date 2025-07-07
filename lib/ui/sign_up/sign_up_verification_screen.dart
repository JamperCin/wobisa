import 'package:core_module/core/extensions/int_extension.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/sign_up/sign_up_verification_controller.dart';
import 'package:wobisa/core/res/app_strings.dart';

class SignUpVerificationScreen extends BaseScreenStandard {
  final _controller = Get.put(SignUpVerificationController());

  @override
  bool showAppBar() {
    return true;
  }

  @override
  Color appBarIconColor(BuildContext context) {
    return colorScheme.primary;
  }

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.dp(), vertical: 16.dp()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(confirmEmail, style: textTheme.titleLarge),
          Gap(70.dp()),
          Center(
            child: PinEntryWidget(
              key: _controller.pinEntryKey,
              codeLength: 6,
              boxDecor: false,
              onCodeChanged: _controller.onCodeEntryComplete,
            ),
          ),
          Gap(40.dp()),
          Center(
            child: Obx(
              () => _controller.isResendingCode.value
                  ? CircularProgressIndicator()
                  : TextButtonWidget(
                      onTap: _controller.onResendVerificationCodeOnClick,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: noCodeSent,
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: sendCodeAgain,
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
          Gap(140.dp()),
          Obx(
            () => ButtonWidget(
              onTap: _controller.onVerifyCodeOnClick,
              text: continueButtonTitle,
              enabled: _controller.isPinValid.value,
              isLoading: _controller.isProcessingRequest.value,
            ),
          ),
        ],
      ),
    );
  }
}
