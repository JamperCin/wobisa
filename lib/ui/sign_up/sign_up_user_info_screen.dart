import 'package:core_module/core/enum/country_picker_type.dart';
import 'package:core_module/core/extensions/int_extension.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/sign_up/sign_up_user_info_controller.dart';
import 'package:wobisa/core/res/app_strings.dart';

class SignUpUserInfoScreen extends BaseScreenStandard {
  final _controller = Get.put(SignUpUserInfoController());

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
          Text(finishLine, style: textTheme.titleLarge),
          Gap(20.dp()),
          Text(userInfoSubTitle, style: textTheme.labelSmall),
          Gap(100.dp()),
          TextFieldWidget(
            labelText: firstNameLabel,
            hintText: firstNameHint,
            controller: _controller.fNameTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            onChanged: _controller.onValidateEntries,
          ),
          Gap(20.dp()),
          TextFieldWidget(
            labelText: lastNameLabel,
            hintText: lastNameHint,
            controller: _controller.lNameTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            onChanged: _controller.onValidateEntries,
          ),
          Gap(20.dp()),
          TextFieldWidget.withPhoneNumber(
            labelText: phoneNumberLabel,
            hintText: phoneNumberHint,
            defaultCountryCode: 'GH',
            hasCountryPicker: true,
            countryPickerDecorationStyle:
                CountryPickerDecorationStyle.continuous,
            controller: _controller.phoneTextController,
            labelStyle: textTheme.bodyMedium,
            unFocusColor: colorScheme.secondary,
            backgroundColor: colorScheme.secondary,
            onCountrySelected: _controller.onCountrySelected,
            onChanged: _controller.onValidateEntries,
          ),
          Gap(5.dp()),
          Text(
            userInfoDesc,
            style: textTheme.labelSmall?.copyWith(fontSize: 12.dp()),
          ),
          Gap(20.dp()),
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
          onTap: _controller.onSubmitUserButtonOnClick,
          text: continueButtonTitle,
          enabled: _controller.isValidEntries.value,
          isLoading: _controller.isProcessingRequest.value,
        ),
      ),
    );
  }
}
