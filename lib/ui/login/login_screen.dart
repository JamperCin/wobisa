import 'package:core_module/core/extensions/int_extension.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/login/login_controller.dart';

class LoginScreen extends BaseScreenStandard {
  final _controller = Get.put(LoginController());

  @override
  bool showAppBar() {
    return true;
  }

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 24.dp(),
        vertical: 16.dp(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Login Screen", style: textTheme.titleLarge),
          Gap(20.dp()),
          Text(
            "Log in to manage your bookings and explore new destinations.",
            style: textTheme.labelMedium,
          ),
          Gap(70.dp()),
          TextFieldWidget(
            labelText: 'Email',
            hintText: 'Enter email',
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
            labelText: 'Password',
            hintText: 'Enter password',
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
              text: 'Forgot Password?',
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.primary,
              ),
            ),
          ),
          Gap(50.dp()),
        ],
      ),
    );
  }

  @override
  Widget bottomNavigationBar(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.dp(), vertical: 16.dp()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
                () => ButtonWidget(
              onTap: _controller.onSignInOnClick,
              text: 'Sign In',
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
                      text: "Don't have an account?  ",
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: "Sign Up",
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
