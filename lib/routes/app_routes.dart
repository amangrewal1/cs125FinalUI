import 'package:flutter/material.dart';
import '../presentation/welcome_screen_one_screen/welcome_screen_one_screen.dart';
import '../presentation/welcome_screen_2_screen/welcome_screen_2_screen.dart';
import '../presentation/splash_page_screen/splash_page_screen.dart';
import '../presentation/register_page_info_screen/register_page_info_screen.dart';
import '../presentation/register_page_activity_screen/register_page_activity_screen.dart';
import '../presentation/success_registration_screen/success_registration_screen.dart';
import '../presentation/register_page_sleep_goal_screen/register_page_sleep_goal_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/add_sleep_screen/add_sleep_screen.dart';
import '../presentation/add_hydration_screen/add_hydration_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreenOneScreen = '/welcome_screen_one_screen';

  static const String welcomeScreen2Screen = '/welcome_screen_2_screen';

  static const String splashPageScreen = '/splash_page_screen';

  static const String registerPageInfoScreen = '/register_page_info_screen';

  static const String registerPageActivityScreen =
      '/register_page_activity_screen';

  static const String successRegistrationScreen =
      '/success_registration_screen';

  static const String registerPageSleepGoalScreen =
      '/register_page_sleep_goal_screen';

  static const String homeScreen = '/home_screen';

  static const String addSleepScreen = '/add_sleep_screen';

  static const String addHydrationScreen = '/add_hydration_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomeScreenOneScreen: WelcomeScreenOneScreen.builder,
        welcomeScreen2Screen: WelcomeScreen2Screen.builder,
        splashPageScreen: SplashPageScreen.builder,
        registerPageInfoScreen: RegisterPageInfoScreen.builder,
        registerPageActivityScreen: RegisterPageActivityScreen.builder,
        successRegistrationScreen: SuccessRegistrationScreen.builder,
        registerPageSleepGoalScreen: RegisterPageSleepGoalScreen.builder,
        homeScreen: HomeScreen.builder,
        addSleepScreen: AddSleepScreen.builder,
        addHydrationScreen: AddHydrationScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashPageScreen.builder
      };
}
