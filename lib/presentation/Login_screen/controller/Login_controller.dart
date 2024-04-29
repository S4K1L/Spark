import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/Login_model.dart';

/// A controller class for the Iphone14ProMaxFourScreen.
///
/// This class manages the state of the Iphone14ProMaxFourScreen, including the
/// current iphone14ProMaxFourModelObj
class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> LoginModelObj =
      LoginModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
