import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/splash_controller.dart'; // ignore_for_file: must_be_immutable

class SplashScreen extends GetWidget<splashController> {
  const SplashScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 44.v),
          child: Column(
            children: [
              Spacer(
                flex: 34,
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
                flex: 65,
              ),
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
}
