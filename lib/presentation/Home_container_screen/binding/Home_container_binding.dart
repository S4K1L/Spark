import '../../../core/app_export.dart';
import '../controller/Home_container_controller.dart';

/// A binding class for the Iphone14ProMaxEightContainerScreen.
///
/// This class ensures that the Iphone14ProMaxEightContainerController is created when the
/// Iphone14ProMaxEightContainerScreen is first loaded.
class HomeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeContainerController());
  }
}
