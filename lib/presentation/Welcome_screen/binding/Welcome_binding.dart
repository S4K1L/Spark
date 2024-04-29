import '../../../core/app_export.dart';
import '../controller/Welcome_controller.dart';

/// A binding class for the Iphone14ProMaxSixScreen.
///
/// This class ensures that the Iphone14ProMaxSixController is created when the
/// Iphone14ProMaxSixScreen is first loaded.
class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
