import 'package:core_module/core_module.dart';

class BaseController extends GetxController{
  ///A boolean value to show or hide the progress indicator on the
  ///button and disable further clicks when making an api request
  RxBool isProcessingRequest = false.obs;

}