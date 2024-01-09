import 'package:get/get.dart';

import '../modules/bottomnavigatorbar/bindings/bottomnavigatorbar_binding.dart';
import '../modules/bottomnavigatorbar/views/bottomnavigatorbar_view.dart';
import '../modules/community/bindings/community_binding.dart';
import '../modules/community/views/community_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/login/createaccount/bindings/createaccount_binding.dart';
import '../modules/login/createaccount/views/createaccount_view.dart';
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
import '../modules/recommendations/bindings/recommendations_binding.dart';
import '../modules/recommendations/views/recommendations_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
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
    GetPage(
      name: _Paths.CREATEACCOUNT,
      page: () => const CreateaccountView(),
      binding: CreateaccountBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.RECOMMENDATIONS,
      page: () => const RecommendationsView(),
      binding: RecommendationsBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY,
      page: () => const CommunityView(),
      binding: CommunityBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
