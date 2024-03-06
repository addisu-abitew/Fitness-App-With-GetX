// ignore_for_file: constant_identifier_names
import 'package:fitness_app_with_getx/pages/forgot_password_view.dart';
import 'package:fitness_app_with_getx/pages/signup_view.dart';
import 'package:get/get.dart';
import '../core.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => const AboutView(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => const SignUpView(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => const ForgetPasswordView(),
    ),
  ];
}
