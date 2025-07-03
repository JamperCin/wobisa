
import 'package:core_module/core_module.dart';
import 'package:wobisa/ui/login/login_screen.dart';
import 'package:wobisa/ui/sign_up/sign_up_screen.dart';

const String rootRoute = "/";

final appRoute = [
  GetPage(name: rootRoute, page: () => LoginScreen()),
  GetPage(name: '/LoginScreen', page: () => LoginScreen()),
  GetPage(name: '/SignUpScreen', page: () => SignUpScreen()),
];


