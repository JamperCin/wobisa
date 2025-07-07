import 'package:core_module/core/app/app_dimens.dart';
import 'package:core_module/core/def/global_def.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wobisa/core/res/app_themes.dart';

import 'core/res/app_colors.dart';
import 'core/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // if (kReleaseMode) {
  //   debugPrint = (String? message, {int? wrapWidth}) {};
  // }

  await CoreModule().init(envPath: 'assets/data/env.json');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    appDimen = AppDimens(context);

    return GetMaterialApp(
      title: 'Wobisa',
      debugShowCheckedModeBanner: false,
      initialRoute: rootRoute,
      getPages: appRoute,
      theme: lightMode,
    );
  }
}
