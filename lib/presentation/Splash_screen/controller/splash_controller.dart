import '../../../core/app_export.dart';
import '../models/splash_model.dart';

/// A controller class for the Iphone14ProMaxNineScreen.
///
/// This class manages the state of the Iphone14ProMaxNineScreen, including the
/// current iphone14ProMaxNineModelObj
class splashController extends GetxController {
  Rx<splashModel> iphone14ProMaxNineModelObj =
      splashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.welcomeScreen,
      );
    });
  }
}
