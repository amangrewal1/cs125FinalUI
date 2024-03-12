import 'package:aman_s_application9/widgets/custom_elevated_button.dart';
import 'models/success_registration_model.dart';
import 'package:flutter/material.dart';
import 'package:aman_s_application9/core/app_export.dart';
import 'bloc/success_registration_bloc.dart';

class SuccessRegistrationScreen extends StatelessWidget {
  const SuccessRegistrationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SuccessRegistrationBloc>(
        create: (context) => SuccessRegistrationBloc(SuccessRegistrationState(
            successRegistrationModelObj: SuccessRegistrationModel()))
          ..add(SuccessRegistrationInitialEvent()),
        child: SuccessRegistrationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuccessRegistrationBloc, SuccessRegistrationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 48.h, top: 102.v, right: 48.h),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroupBlue200,
                        height: 304.v,
                        width: 277.h),
                    SizedBox(height: 44.v),
                    Text("msg_welcome_stefani".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 5.v),
                    Container(
                        width: 210.h,
                        margin: EdgeInsets.only(left: 33.h, right: 34.h),
                        child: Text("msg_you_are_all_set".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.50))),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildGoToHome(context)));
    });
  }

  /// Section Widget
  Widget _buildGoToHome(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_go_to_home".tr,
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueDecoration,
        onPressed: () {
          navigateToHome(context);
        });
  }

  /// Navigates to the homeScreen when the action is triggered.
  navigateToHome(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.homeScreen,
    );
  }
}
