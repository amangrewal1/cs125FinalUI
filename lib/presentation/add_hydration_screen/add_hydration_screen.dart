import 'package:aman_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:aman_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:aman_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:aman_s_application9/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:aman_s_application9/widgets/custom_elevated_button.dart';
import 'models/add_hydration_model.dart';
import 'package:flutter/material.dart';
import 'package:aman_s_application9/core/app_export.dart';
import 'bloc/add_hydration_bloc.dart';

class AddHydrationScreen extends StatelessWidget {
  const AddHydrationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddHydrationBloc>(
        create: (context) => AddHydrationBloc(
            AddHydrationState(addHydrationModelObj: AddHydrationModel()))
          ..add(AddHydrationInitialEvent()),
        child: AddHydrationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddHydrationBloc, AddHydrationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 28.v),
                  child: Column(children: [
                    SizedBox(height: 18.v),
                    _buildMonthCard(context),
                    Spacer()
                  ])),
              bottomNavigationBar: _buildAdd(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_hydration".tr, margin: EdgeInsets.only(left: 74.h)),
        actions: [
          AppbarTrailingIconbuttonOne(
              imagePath: ImageConstant.imgDetailNavs,
              margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildMonthCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 37.h, right: 23.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCalendarBlueGray100,
              height: 17.v,
              width: 13.h,
              margin: EdgeInsets.only(top: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 1.v),
              child: Text("msg_add_water_intake".tr,
                  style: theme.textTheme.bodySmall)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_8_oz".tr,
                  style: CustomTextStyles.bodySmallGray500)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray50018x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(left: 5.h, top: 2.v, right: 37.h))
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  naviToHome(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.homeScreen,
    );
  }
}
