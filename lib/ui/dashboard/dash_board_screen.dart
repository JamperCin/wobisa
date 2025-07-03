import 'package:core_module/core_ui/base_screen/base_screen_standard.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends BaseScreenStandard {
  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Home Screen",
            style: textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
