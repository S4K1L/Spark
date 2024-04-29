import '../../../core/app_export.dart';
import '../controller/Login_controller.dart';

/// A binding class for the Iphone14ProMaxFourScreen.
///
/// This class ensures that the Iphone14ProMaxFourController is created when the
/// Iphone14ProMaxFourScreen is first loaded.
class Login_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
