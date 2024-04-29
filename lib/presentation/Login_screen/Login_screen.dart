import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Home_container_screen/home_container_screen.dart';
import 'controller/Login_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 44.v),
                child: Column(
                  children: [
                    SizedBox(height: 31.v),
                    _buildLoginSection(),
                    SizedBox(height: 2.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 47.h),
                        child: Text(
                          "lbl_log_in".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 46.h,
                        right: 37.h,
                      ),
                      child: CustomTextFormField(
                        controller: controller.emailController,
                        hintText: "lbl_email_address".tr,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 33.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 47.h,
                        right: 37.h,
                      ),
                      child: CustomTextFormField(
                        controller: controller.passwordController,
                        hintText: "lbl_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 45.v),
                    CustomElevatedButton(
                      text: "lbl_login2".tr,
                      margin: EdgeInsets.only(
                        left: 47.h,
                        right: 37.h,
                      ),
                      onPressed: () {
                        Get.toNamed(
                          AppRoutes.homeScreenContainer,
                        );
                      },
                    ),
                    SizedBox(height: 12.v),
                    GestureDetector(
                      onTap: () {
                        onTapTxtDonthaveanaccount();
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_don_t_have_an_account2".tr,
                              style: CustomTextStyles.bodyMediumBlack900,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_sign_up".tr,
                              style: CustomTextStyles.titleSmallCyan700,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Spacer(),
                    Opacity(
                      opacity: 0.6,
                      child: Text(
                        "lbl_v1_0_0".tr,
                        style: CustomTextStyles.bodySmallInterBlack900,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse3,
            height: 172.v,
            width: 46.h,
            margin: EdgeInsets.only(bottom: 194.v),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 32.v,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSparkRemovebgPreview,
                      height: 98.v,
                      width: 81.h,
                      radius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 19.v,
                        bottom: 15.v,
                      ),
                      child: Text(
                        "lbl_spark".tr,
                        style: CustomTextStyles.displayMediumPrimaryContainer,
                      ),
                    )
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGuySittingTab,
                  height: 230.v,
                  width: 256.h,
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6,
            height: 268.v,
            width: 69.h,
            radius: BorderRadius.circular(
              33.h,
            ),
            margin: EdgeInsets.only(
              left: 18.h,
              top: 98.v,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the iphone14ProMaxNineScreen when the action is triggered.
  onTapLogin() {

  }

  /// Navigates to the iphone14ProMaxSevenScreen when the action is triggered.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
