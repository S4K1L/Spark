import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/Welcome_controller.dart'; // ignore_for_file: must_be_immutable

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [
              Spacer(
                flex: 50,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSparkRemovebgPreview,
                height: 198.v,
                width: 163.h,
                radius: BorderRadius.circular(
                  11.h,
                ),
              ),
              SizedBox(height: 66.v),
              Text(
                "lbl_spark".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 273.h,
                child: Text(
                  "msg_manage_connect".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Spacer(
                flex: 49,
              ),
              CustomElevatedButton(
                text: "lbl_let_s_go".tr,
                onPressed: () {
                  onTapLetsgo();
                },
              ),
              SizedBox(height: 92.v),
              Opacity(
                opacity: 0.6,
                child: Text(
                  "lbl_v1_0_0".tr,
                  style: CustomTextStyles.bodySmallInterOnPrimaryContainer,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the iphone14ProMaxFourScreen when the action is triggered.
  onTapLetsgo() {
    Get.toNamed(
      AppRoutes.loginscreen,
    );
  }
}
