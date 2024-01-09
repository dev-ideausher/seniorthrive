import 'package:get/get.dart';

import '../modules/bottomnavigatorbar/bindings/bottomnavigatorbar_binding.dart';
import '../modules/bottomnavigatorbar/views/bottomnavigatorbar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/forgotpassword/bindings/forgotpassword_binding.dart';
import '../modules/login/forgotpassword/views/forgotpassword_view.dart';
import '../modules/login/loginoptions/bindings/loginoptions_binding.dart';
import '../modules/login/loginoptions/views/loginoptions_view.dart';
import '../modules/login/loginwithemail/bindings/loginwithemail_binding.dart';
import '../modules/login/loginwithemail/views/loginwithemail_view.dart';
import '../modules/login/otpverification/bindings/otpverification_binding.dart';
import '../modules/login/otpverification/views/otpverification_view.dart';
import '../modules/login/resetpassword/bindings/resetpassword_binding.dart';
import '../modules/login/resetpassword/views/resetpassword_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/profile/personalinforamtion/bindings/personalinforamtion_binding.dart';
import '../modules/profile/personalinforamtion/views/personalinforamtion_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGINOPTIONS,
      page: () => const LoginoptionsView(),
      binding: LoginoptionsBinding(),
    ),
    GetPage(
      name: _Paths.LOGINWITHEMAIL,
      page: () => LoginwithemailView(),
      binding: LoginwithemailBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.OTPVERIFICATION,
      page: () => const OtpverificationView(),
      binding: OtpverificationBinding(),
    ),
    GetPage(
      name: _Paths.PERSONALINFORAMTION,
      page: () => const PersonalinforamtionView(),
      binding: PersonalinforamtionBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => const ForgotpasswordView(),
      binding: ForgotpasswordBinding(),
    ),
    GetPage(
      name: _Paths.RESETPASSWORD,
      page: () => const ResetpasswordView(),
      binding: ResetpasswordBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATORBAR,
      page: () => const BottomnavigatorbarView(),
      binding: BottomnavigatorbarBinding(),
    ),
  ];
}
