import 'package:core_module/core/extensions/int_extension.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/sign_up/sign_up_set_password_controller.dart';
import 'package:wobisa/core/res/app_strings.dart';

class SignUpSetPasswordScreen extends BaseScreenStandard {
  final _controller = Get.put(SignUpSetPasswordController());

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
          Text(setPasswordTitle, style: textTheme.titleLarge),
          Gap(20.dp()),
          Text(setPasswordSubTitle, style: textTheme.labelSmall),
          Gap(70.dp()),
          TextFieldWidget.withPassword(
            labelText: passwordLabel,
            hintText: passwordHint,
            controller: _controller.passwordTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            suffixIcon: SizedBox.shrink(),
            prefixIcon: SizedBox.shrink(),
            onChanged: _controller.onValidateEntry,
          ),
          Gap(20.dp()),
          Text(atLeast, style: textTheme.labelSmall),
          Gap(10.dp()),
          Obx(
            () => Wrap(
              spacing: _controller.passwordValue.value.isNotEmpty
                  ? 3.dp()
                  : 4.dp(), // Horizontal space between items
              runSpacing: 5.dp(), // Vertical space between lines
              children: [
                _buildCheck(charactersLong, _controller.hasMinLength),
                _buildCheck(aNumber, _controller.hasDigit),
                _buildCheck(aLowercaseLetter, _controller.hasLowercase),
                _buildCheck(anUppercaseLetter, _controller.hasUppercase),
                _buildCheck(aSpecialCharacter, _controller.hasSpecialChar),
              ],
            ),
          ),
          Gap(40.dp()),
          TextFieldWidget.withPassword(
            labelText: confirmPassword,
            hintText: confirmPassword,
            controller: _controller.confirmPasswordTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            suffixIcon: SizedBox.shrink(),
            prefixIcon: SizedBox.shrink(),
            onChanged: _controller.onConfirmPasswordChange,
          ),
          Gap(20.dp()),
        ],
      ),
    );
  }

  Widget _buildCheck(String label, bool passed) {
    return ContainerWidget.withDottedBorder(
      borderColor: passed ? colorScheme.primary : colorScheme.surfaceDim,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: textTheme.labelMedium?.copyWith(fontSize: 12.dp()),
          ),
        ],
      ),
    );
  }


  @override
  Widget bottomNavigationBar(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.dp(), vertical: 24.dp()),
      child: Obx(
            () => ButtonWidget(
          onTap: _controller.onSetPasswordButtonOnclick,
          text: continueButtonTitle,
          enabled: _controller.isValidPassword.value,
          isLoading: _controller.isProcessingRequest.value,
        ),
      ),
    );
  }
}
