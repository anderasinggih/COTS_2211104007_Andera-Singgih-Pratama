import 'package:get/get.dart';

import 'package:p1/modules/onboarding/view/login_view.dart';
import 'package:p1/modules/onboarding/view/main_view.dart';
import 'package:p1/modules/onboarding/view/onboarding_view.dart';

class AppRoutes {
  static const INITIAL = '/onboarding';
  static const LOGIN = '/login';
  static const MAIN = '/main';
}

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => OnboardingPage(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: AppRoutes.MAIN,
      page: () => MainPage(),
    ),
  ];
}