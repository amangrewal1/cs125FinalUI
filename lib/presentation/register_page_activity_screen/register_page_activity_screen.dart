import 'package:aman_s_application9/widgets/custom_drop_down.dart';
import 'models/register_page_activity_model.dart';
import 'package:aman_s_application9/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:aman_s_application9/core/app_export.dart';
import 'bloc/register_page_activity_bloc.dart';

class RegisterPageActivityScreen extends StatelessWidget {
  const RegisterPageActivityScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterPageActivityBloc>(
        create: (context) => RegisterPageActivityBloc(RegisterPageActivityState(
            registerPageActivityModelObj: RegisterPageActivityModel()))
          ..add(RegisterPageActivityInitialEvent()),
        child: RegisterPageActivityScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 46.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: Text("msg_what_is_your_activity".tr,
                              style: theme.textTheme.titleLarge))),
                  SizedBox(
                      width: 179.h,
                      child: Text("msg_it_will_help_us2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 28.v),
                  BlocSelector<
                          RegisterPageActivityBloc,
                          RegisterPageActivityState,
                          RegisterPageActivityModel?>(
                      selector: (state) => state.registerPageActivityModelObj,
                      builder: (context, registerPageActivityModelObj) {
                        return CustomDropDown(
                            icon: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowdown,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize)),
                            hintText: "lbl_activity_goal".tr,
                            items: registerPageActivityModelObj
                                    ?.dropdownItemList ??
                                [],
                            contentPadding: EdgeInsets.only(
                                left: 30.h, top: 15.v, bottom: 15.v),
                            onChanged: (value) {
                              context
                                  .read<RegisterPageActivityBloc>()
                                  .add(ChangeDropDownEvent(value: value));
                            });
                      }),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildConfirm(context)));
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_confirm".tr,
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueDecoration,
        onPressed: () {
          navigateToSleep(context);
        });
  }

  /// Navigates to the registerPageSleepGoalScreen when the action is triggered.
  navigateToSleep(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerPageSleepGoalScreen,
    );
  }
}
