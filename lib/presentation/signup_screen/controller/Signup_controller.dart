import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_model.dart';


class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  Rx<SignupModel> SignupModelObj =
      SignupModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
