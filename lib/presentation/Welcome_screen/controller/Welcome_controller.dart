import '../../../core/app_export.dart';
import '../models/Welcome_model.dart';

/// A controller class for the Iphone14ProMaxSixScreen.
///
/// This class manages the state of the Iphone14ProMaxSixScreen, including the
/// current iphone14ProMaxSixModelObj
class WelcomeController extends GetxController {
  Rx<WelcomeModel> welcomeModelObj =
      WelcomeModel().obs;
}
