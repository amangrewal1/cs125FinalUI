import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:aman_s_application9/core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome Screen - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeScreenOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome Screen -2 ".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeScreen2Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Register Page - info".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registerPageInfoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Register Page - Activity".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registerPageActivityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Success Registration".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.successRegistrationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Register Page - Sleep Goal".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registerPageSleepGoalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Sleep".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addSleepScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Hydration".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addHydrationScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
