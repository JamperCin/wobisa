import 'package:core_module/core/extensions/int_extension.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/login/login_controller.dart';
import 'package:wobisa/core/res/app_strings.dart';

class LoginScreen extends BaseScreenStandard {
  final _controller = Get.put(LoginController());

  @override
  bool showAppBar() {
    return true;
  }

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.dp(), vertical: 16.dp()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(loginTitle, style: textTheme.titleLarge),
          Gap(20.dp()),
          Text(loginSubTitle, style: textTheme.labelMedium),
          Gap(70.dp()),
          TextFieldWidget(
            labelText: emailLabel,
            hintText: emailHint,
            keyboardType: TextInputType.emailAddress,
            textCapitalization: TextCapitalization.none,
            controller: _controller.emailTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            onChanged: _controller.validateLoginEntries,
          ),
          Gap(20.dp()),
          TextFieldWidget.withPassword(
            labelText: passwordLabel,
            hintText: passwordHint,
            controller: _controller.passwordTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            suffixIcon: SizedBox.shrink(),
            prefixIcon: SizedBox.shrink(),
            onChanged: _controller.validateLoginEntries,
          ),
          Gap(50.dp()),
          Align(
            alignment: Alignment.center,
            child: TextButtonWidget(
              onTap: _controller.onForgotPasswordOnClick,
              text: forgotPassword,
              style: textTheme.bodyMedium?.copyWith(color: colorScheme.primary),
            ),
          ),
          Gap(50.dp()),
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
          Obx(
            () => ButtonWidget(
              onTap: _controller.onSignInOnClick,
              text: signInButtonTitle,
              enabled: _controller.isLoginEntriesValid.value,
              isLoading: _controller.isProcessingRequest.value,
            ),
          ),
          Gap(20.dp()),
          Center(
            child: TextButtonWidget(
              onTap: _controller.navigateToSignUp,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: dontHaveAccount,
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: signUpButtonTitle,
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
          Gap(10.dp()),
        ],
      ),
    );
  }
}
