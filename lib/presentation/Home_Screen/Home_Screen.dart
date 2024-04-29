import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/Home_controller.dart';
import 'models/eventdetails_item_model.dart';
import 'models/Home_model.dart';
import 'widgets/eventdetails_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Column(
              children: [
                SizedBox(height: 84.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "Hello, Eldren!",
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                _buildSparkPointsButton(),
                SizedBox(height: 39.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 28.h),
                    child: Row(
                      children: [
                        Container(
                          decoration: AppDecoration.outlineBlack,
                          child: Text(
                            "Your Tasks:",
                            style: CustomTextStyles.titleLargeBlack900,
                          ),
                        ),
                        _buildAddButton()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                _buildCompleteRow(),
                SizedBox(height: 22.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 173.h,
                    child: Divider(
                      indent: 39.h,
                    ),
                  ),
                ),
                Divider(
                  color: appTheme.black900.withOpacity(0.11),
                  indent: 39.h,
                  endIndent: 30.h,
                ),
                SizedBox(height: 21.v),
                _buildEventsColumn()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSparkPointsButton() {
    return CustomElevatedButton(
      height: 45.v,
      width: 222.h,
      text: "Spark Points: 80",
      margin: EdgeInsets.only(left: 21.h),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            9.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgSparkremovebgpreview1,
          height: 23.v,
          width: 19.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildAddButton() {
    return CustomElevatedButton(
      onPressed: () {},
      height: 24.v,
      width: 61.h,
      text: "Add+",
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  Widget _buildAddButton2() {
    return CustomElevatedButton(
      onPressed: () {},
      height: 24.v,
      width: 61.h,
      text: "Add+",
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.outlineBlackTL12,
      buttonTextStyle: TextStyle(
        color: Colors.black,

      ),
    );
  }

  /// Section Widget
  Widget _buildSparkPointsButton1() {
    return CustomElevatedButton(
      height: 24.v,
      width: 152.h,
      text: "15 Spark Points",
      buttonStyle: CustomButtonStyles.outlineBlackTL9,
      buttonTextStyle: TextStyle(fontSize: 12, color: Colors.white),
    );
  }

  /// Section Widget
  Widget _buildSparkPointsButton2() {
    return CustomElevatedButton(
      height: 24.v,
      width: 152.h,
      text: "15 Spark Points",
      buttonStyle: CustomButtonStyles.outlineBlackTL91,
      buttonTextStyle: TextStyle(fontSize: 12, color: Colors.white),
    );
  }

  /// Section Widget
  Widget _buildCompleteRow() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 11.v),
                    SizedBox(
                      width: 164.h,
                      child: Text(
                        "msg_complete_assignment_tme4113".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.orange600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder52,
                      ),
                      child: Container(
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 50.0,
                          percent: 0.3,
                          center: new Text(
                            "30%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.green,
                          backgroundColor: Colors.red,
                          restartAnimation: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildSparkPointsButton1()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 28.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.outlineBlack9003.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 17.v),
                    Text(
                      "lbl_attend_class".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                    SizedBox(height: 23.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.orange600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder52,
                      ),
                      child: Container(
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 50.0,
                          percent: 0.2,
                          center: new Text(
                            "20%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.green,
                          backgroundColor: Colors.red,
                          restartAnimation: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildSparkPointsButton2()
                  ],
                ),
              ),
              SizedBox(width: 30),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 11.v),
                    SizedBox(
                      width: 164.h,
                      child: Text(
                        "msg_complete_assignment_tme4113".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.orange600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder52,
                      ),
                      child: Container(
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 50.0,
                          percent: 0.1,
                          center: new Text(
                            "10%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.green,
                          backgroundColor: Colors.red,
                          restartAnimation: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildSparkPointsButton1()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 28.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.outlineBlack9003.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 17.v),
                    Text(
                      "lbl_attend_class".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                    SizedBox(height: 23.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.orange600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder52,
                      ),
                      child: Container(
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 50.0,
                          percent: 0.4,
                          center: new Text(
                            "40%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.green,
                          backgroundColor: Colors.red,
                          restartAnimation: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildSparkPointsButton2()
                  ],
                ),
              ),
              SizedBox(width: 30),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 11.v),
                    SizedBox(
                      width: 164.h,
                      child: Text(
                        "msg_complete_assignment_tme4113".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.orange600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder52,
                      ),
                      child: Container(
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 50.0,
                          percent: 0.6,
                          center: new Text(
                            "60%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.green,
                          backgroundColor: Colors.red,
                          restartAnimation: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildSparkPointsButton1()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 28.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.outlineBlack9003.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 17.v),
                    Text(
                      "lbl_attend_class".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                    SizedBox(height: 23.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.orange600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder52,
                      ),
                      child: Container(
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 50.0,
                          percent: 0.2,
                          center: new Text(
                            "20%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.green,
                          backgroundColor: Colors.red,
                          restartAnimation: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildSparkPointsButton2()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventsColumn() {
    List<EventModel> staticEventDetailsList = [
      EventModel(
        eventTitle: "Event 1",
        eventDescriptio: "Description for Event 1",
      ),
      EventModel(
        eventTitle: "Event 2",
        eventDescriptio: "Description for Event 2",
      ),
      EventModel(
        eventTitle: "Event 3",
        eventDescriptio: "Description for Event 3",
      ),
      EventModel(
        eventTitle: "Event 3",
        eventDescriptio: "Description for Event 3",
      ),
      EventModel(
        eventTitle: "Event 3",
        eventDescriptio: "Description for Event 3",
      ),
    ];

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder41,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 24.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 36.h),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "Events",
                  style: CustomTextStyles.titleLargeBlack900_1,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(
                left: 27.h,
                right: 13.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children:
                    List.generate(staticEventDetailsList.length, (index) {
                  EventModel model = staticEventDetailsList[index];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Home_EventDetails(
                              title: model.eventTitle.value,
                              description: model.eventDescriptio.value,
                              button: _buildAddButton2(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                    ],
                  );
                },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
