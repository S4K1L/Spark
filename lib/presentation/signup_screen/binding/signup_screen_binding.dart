import '../../../core/app_export.dart';
import '../controller/Signup_controller.dart';

/// A binding class for the Iphone14ProMaxSevenScreen.
///
/// This class ensures that the Iphone14ProMaxSevenController is created when the
/// Iphone14ProMaxSevenScreen is first loaded.
class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
