import '../../../core/app_export.dart';
import '../models/Home_model.dart';

/// A controller class for the Iphone14ProMaxEightPage.
///
/// This class manages the state of the Iphone14ProMaxEightPage, including the
/// current iphone14ProMaxEightModelObj
class HomeController extends GetxController {
  HomeController(this.HomeModelObj);

  Rx<HomeModel> HomeModelObj;
}
