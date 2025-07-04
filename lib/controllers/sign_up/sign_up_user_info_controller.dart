import 'package:core_module/core/model/local/country_model.dart';
import 'package:core_module/core/utils/navigation_utils.dart';
import 'package:core_module/core/utils/validation_utils.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/controllers/base/base_controller.dart';
import 'package:wobisa/ui/dashboard/dash_board_screen.dart';

class SignUpUserInfoController extends BaseController {
  final fNameTextController = TextEditingController();
  final lNameTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  RxBool isValidEntries = false.obs;
  CountryModel selectedCountry = CountryModel();


  ///Submit user info to an api to complete registration
  Future<void> onSubmitUserButtonOnClick() async {
    isProcessingRequest.value = true;
    await Future.delayed(const Duration(seconds: 3));
    isProcessingRequest.value = false;

    NavUtils().fireTargetOff(DashBoardScreen());
  }


  /// Validate entries
  void onValidateEntries(String value) {
    debugPrint("${selectedCountry.phoneCode}${phoneTextController.text}");
    isValidEntries.value =
        fNameTextController.text.length > 2 &&
        lNameTextController.text.length > 2 &&
        ValidationUtils().isValidPhone(phoneTextController.text);
  }

  void onCountrySelected(CountryModel? country) {
    selectedCountry = country ?? CountryModel();
  }


}
