import 'package:core_module/core/extensions/int_extension.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/core/res/app_strings.dart';

class SignUpSetPasswordScreen extends BaseScreenStandard {
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
          Text(setPasswordSubTitle, style: textTheme.labelMedium),
          Gap(70.dp()),
          TextFieldWidget.withPassword(
            labelText: 'Password',
            hintText: 'Enter password',
           // controller: _controller.passwordTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            suffixIcon: SizedBox.shrink(),
            prefixIcon: SizedBox.shrink(),
           // onChanged: _controller.validateLoginEntries,
          ),
        ],
      ),
    );
  }
}
