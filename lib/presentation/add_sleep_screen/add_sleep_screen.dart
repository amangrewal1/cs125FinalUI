import 'package:aman_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:aman_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:aman_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:aman_s_application9/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:aman_s_application9/widgets/custom_elevated_button.dart';
import 'models/add_sleep_model.dart';
import 'package:flutter/material.dart';
import 'package:aman_s_application9/core/app_export.dart';
import 'bloc/add_sleep_bloc.dart';

class AddSleepScreen extends StatelessWidget {
  const AddSleepScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddSleepBloc>(
        create: (context) =>
            AddSleepBloc(AddSleepState(addSleepModelObj: AddSleepModel()))
              ..add(AddSleepInitialEvent()),
        child: AddSleepScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddSleepBloc, AddSleepState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 18.v),
                  child: Column(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.h),
                        child: _buildHoursOfSleepCard(context,
                            clock: ImageConstant.imgIconBed,
                            hoursOfSleep: "lbl_bedtime".tr,
                            duration: "lbl_09_00_pm".tr,
                            onTapHoursOfSleepCard: () {
                          openTimePickerDialog(context);
                        })),
                    SizedBox(height: 14.v),
                    Padding(
                        padding: EdgeInsets.only(left: 2.h, right: 1.h),
                        child: _buildHoursOfSleepCard(context,
                            clock: ImageConstant.imgClock,
                            hoursOfSleep: "lbl_hours_of_sleep".tr,
                            duration: "msg_8hours_30minutes".tr)),
                    SizedBox(height: 12.v),
                    _buildText(context),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildAdd(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_add_sleep".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgDetailNavs,
              margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildText(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 3.h, bottom: 2.v),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLine60,
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          margin: EdgeInsets.only(top: 1.v)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLine61,
                          height: 6.v,
                          width: 1.h),
                      CustomImageView(
                          imagePath: ImageConstant.imgLine60Gray600,
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(top: 1.v))
                    ]),
                    CustomImageView(
                        imagePath: ImageConstant.imgLockOnprimarycontainer,
                        height: 14.v,
                        width: 11.h)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 2.v, bottom: 3.v),
                  child: Text("lbl_stress_level".tr,
                      style: theme.textTheme.bodySmall)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  child: Text("lbl_3".tr,
                      style: CustomTextStyles.bodySmallGray500)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray500,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 5.h))
            ]));
  }

  /// Section Widget
  Widget _buildAdd(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add".tr,
        margin: EdgeInsets.only(left: 31.h, right: 29.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueDecoration,
        onPressed: () {
          naviToHome(context);
        });
  }

  /// Common widget
  Widget _buildHoursOfSleepCard(
    BuildContext context, {
    required String clock,
    required String hoursOfSleep,
    required String duration,
    Function? onTapHoursOfSleepCard,
  }) {
    return GestureDetector(
        onTap: () {
          onTapHoursOfSleepCard!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: clock, height: 20.adaptSize, width: 20.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(hoursOfSleep,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray600))),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(duration,
                      style: CustomTextStyles.bodySmallGray500
                          .copyWith(color: appTheme.gray500))),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray500,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 5.h, right: 2.h))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a time picker dialog to update the selected time
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> openTimePickerDialog(BuildContext context) async {
    var initialState = BlocProvider.of<AddSleepBloc>(context).state;
    TimeOfDay? time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  /// Navigates to the homeScreen when the action is triggered.
  naviToHome(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.homeScreen,
    );
  }
}
