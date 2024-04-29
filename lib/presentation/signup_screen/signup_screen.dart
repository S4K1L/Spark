import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/Signup_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  SignupScreen({Key? key})
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
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 44.v),
              child: Column(
                children: [
                  SizedBox(height: 31.v),
                  _buildRowSpacer(),
                  SizedBox(height: 1.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 47.h),
                      child: Text(
                        "lbl_sign_up".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildEmail(),
                  SizedBox(height: 33.v),
                  _buildPassword(),
                  SizedBox(height: 33.v),
                  _buildConfirmPassword(),
                  SizedBox(height: 26.v),
                  _buildSignUp(),
                  SizedBox(height: 12.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtAlreadyhavean();
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                          TextSpan(
                            text: "lbl_log_in2".tr,
                            style: CustomTextStyles.titleSmallCyan700,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 81.v),
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
    );
  }

  /// Section Widget
  Widget _buildRowSpacer() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse3172x46,
            height: 172.v,
            width: 46.h,
            margin: EdgeInsets.only(bottom: 194.v),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 48.v,
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
                SizedBox(height: 12.v),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot6,
                  height: 202.v,
                  width: 236.h,
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
              left: 28.h,
              top: 98.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(
        left: 47.h,
        right: 37.h,
      ),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email_address".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 47.h,
        right: 37.h,
      ),
      child: CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 47.h,
        right: 37.h,
      ),
      child: CustomTextFormField(
        controller: controller.confirmPasswordController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      margin: EdgeInsets.only(
        left: 47.h,
        right: 37.h,
      ),
    );
  }

  /// Navigates to the iphone14ProMaxFourScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.loginscreen,
    );
  }
}
