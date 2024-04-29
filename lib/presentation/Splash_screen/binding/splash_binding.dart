import '../../../core/app_export.dart';
import '../controller/splash_controller.dart';

/// A binding class for the Iphone14ProMaxNineScreen.
///
/// This class ensures that the Iphone14ProMaxNineController is created when the
/// Iphone14ProMaxNineScreen is first loaded.
class splashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => splashController());
  }
}
