import 'package:core_module/core/utils/navigation_utils.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';
import 'package:wobisa/core/res/app_strings.dart';
import 'package:wobisa/ui/login/login_screen.dart';

class DashBoardScreen extends BaseScreenStandard {
  @override
  List<Widget> actions() {
    return [
      IconButtonWidget(
        icon: Icons.power_settings_new,
        iconColor: colorScheme.primary,
        onTap: () {
          NavUtils().fireTargetOff(LoginScreen());
        },
      ),
    ];
  }

  @override
  bool showAppBar() {
    return true;
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            homeScreen,
            style: textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
