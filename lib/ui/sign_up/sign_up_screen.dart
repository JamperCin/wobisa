import 'package:core_module/core/extensions/int_extension.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/sign_up/sign_up_controller.dart';
import 'package:wobisa/core/res/app_strings.dart';

class SignUpScreen extends BaseScreenStandard {
  final _controller = Get.put(SignUpController());

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
          Text(signUpTitle, style: textTheme.titleLarge),
          Gap(20.dp()),
          Text(signUpSubTitle, style: textTheme.labelSmall),
          Gap(100.dp()),
          TextFieldWidget(
            labelText: emailLabel,
            hintText: emailHintExample,
            keyboardType: TextInputType.emailAddress,
            textCapitalization: TextCapitalization.none,
            controller: _controller.emailTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            onChanged: _controller.validateEntries,
          ),
          Gap(5.dp()),
          Text(
            signUpWithEmailDesc,
            style: textTheme.labelSmall?.copyWith(fontSize: 12.dp()),
          ),
          Gap(140.dp()),
          Obx(
            () => ButtonWidget(
              onTap: _controller.onSignUpOnClick,
              text: continueButtonTitle,
              enabled: _controller.isLoginEntriesValid.value,
              isLoading: _controller.isProcessingRequest.value,
            ),
          ),
          Gap(20.dp()),
          Center(
            child: TextButtonWidget(
              onTap: _controller.navigateToSignIn,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyHaveAccount,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: signInButtonTitle,
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
          Gap(20.dp()),
        ],
      ),
    );
  }

  @override
  Widget bottomNavigationBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.dp(), vertical: 16.dp()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButtonWidget(
            onTap: _controller.onTermsAndConditionsOnClick,
            text: termsAndConditions,
            textAlign: TextAlign.center,
            style: textTheme.labelMedium?.copyWith(
              decoration: TextDecoration.underline,
              fontSize: 12.dp(),
            ),
          ),
          Gap(10.dp()),
        ],
      ),
    );
  }
}
