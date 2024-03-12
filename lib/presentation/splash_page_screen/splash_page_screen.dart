import 'models/splash_page_model.dart';
import 'package:flutter/material.dart';
import 'package:aman_s_application9/core/app_export.dart';
import 'bloc/splash_page_bloc.dart';

class SplashPageScreen extends StatelessWidget {
  const SplashPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashPageBloc>(
        create: (context) => SplashPageBloc(
            SplashPageState(splashPageModelObj: SplashPageModel()))
          ..add(SplashPageInitialEvent()),
        child: SplashPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashPageBloc, SplashPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 55.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_antsleeper".tr,
                                      style: theme.textTheme.displaySmall),
                                  TextSpan(
                                      text: "lbl_x".tr,
                                      style: theme.textTheme.displayMedium)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 2.v),
                        Text("msg_everybody_can_sleep".tr,
                            style: theme.textTheme.bodyLarge)
                      ]))));
    });
  }
}
