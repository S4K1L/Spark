import '../../../core/app_export.dart';
import '../models/home_container_model.dart';

/// A controller class for the Iphone14ProMaxEightContainerScreen.
///
/// This class manages the state of the Iphone14ProMaxEightContainerScreen, including the
/// current iphone14ProMaxEightContainerModelObj
class HomeContainerController extends GetxController {
  Rx<HomeContainerModel> HomeModelObj =
      HomeContainerModel().obs;
}
