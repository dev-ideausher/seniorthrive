import 'package:get/get.dart';

import '../modules/bottomnavigatorbar/bindings/bottomnavigatorbar_binding.dart';
import '../modules/bottomnavigatorbar/views/bottomnavigatorbar_view.dart';
import '../modules/community/bindings/community_binding.dart';
import '../modules/community/views/community_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/previewvideo/bindings/previewvideo_binding.dart';
import '../modules/homepage/previewvideo/views/previewvideo_view.dart';
import '../modules/homepage/scanresults/bindings/scanresults_binding.dart';
import '../modules/homepage/scanresults/views/scanresults_view.dart';
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
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/profile/personalinforamtion/bindings/personalinforamtion_binding.dart';
import '../modules/profile/personalinforamtion/views/personalinforamtion_view.dart';
import '../modules/recommendations/bindings/recommendations_binding.dart';
import '../modules/recommendations/recommendedmeasures/bindings/recommendedmeasures_binding.dart';
import '../modules/recommendations/recommendedmeasures/views/recommendedmeasures_view.dart';
import '../modules/recommendations/views/recommendations_view.dart';
import '../modules/settings/accessiblity/bindings/accessiblity_binding.dart';
import '../modules/settings/accessiblity/views/accessiblity_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/contactus/bindings/contactus_binding.dart';
import '../modules/settings/contactus/views/contactus_view.dart';
import '../modules/settings/faq/bindings/faq_binding.dart';
import '../modules/settings/faq/views/faq_view.dart';
import '../modules/settings/healthConditionsSettings/bindings/health_conditions_settings_binding.dart';
import '../modules/settings/healthConditionsSettings/views/health_conditions_settings_view.dart';
import '../modules/settings/helpcenter/bindings/helpcenter_binding.dart';
import '../modules/settings/helpcenter/views/helpcenter_view.dart';
import '../modules/settings/notificationsettings/bindings/notificationsettings_binding.dart';
import '../modules/settings/notificationsettings/views/notificationsettings_view.dart';
import '../modules/settings/personalinformationsettings/bindings/personalinformationsettings_binding.dart';
import '../modules/settings/personalinformationsettings/views/personalinformationsettings_view.dart';
import '../modules/settings/privacypolicy/bindings/privacypolicy_binding.dart';
import '../modules/settings/privacypolicy/views/privacypolicy_view.dart';
import '../modules/settings/resetpasswordsetting/bindings/resetpasswordsetting_binding.dart';
import '../modules/settings/resetpasswordsetting/views/resetpasswordsetting_view.dart';
import '../modules/settings/subscriptionsettings/bindings/subscriptionsettings_binding.dart';
import '../modules/settings/subscriptionsettings/views/subscriptionsettings_view.dart';
import '../modules/settings/termsofuse/bindings/termsofuse_binding.dart';
import '../modules/settings/termsofuse/views/termsofuse_view.dart';
import '../modules/settings/thrivescore/bindings/thrivescore_binding.dart';
import '../modules/settings/thrivescore/views/thrivescore_view.dart';
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
      children: [
        GetPage(
          name: _Paths.PREVIEWVIDEO,
          page: () => const PreviewvideoView(),
          binding: PreviewvideoBinding(),
        ),
        GetPage(
          name: _Paths.SCANRESULTS,
          page: () => const ScanresultsView(),
          binding: ScanresultsBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.RECOMMENDATIONS,
      page: () => const RecommendationsView(),
      binding: RecommendationsBinding(),
      children: [
        GetPage(
          name: _Paths.RECOMMENDEDMEASURES,
          page: () => const RecommendedmeasuresView(),
          binding: RecommendedmeasuresBinding(),
        ),
      ],
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
      children: [
        GetPage(
          name: _Paths.ACCESSIBLITY,
          page: () => const AccessiblityView(),
          binding: AccessiblityBinding(),
        ),
        GetPage(
          name: _Paths.HEALTH_CONDITIONS_SETTINGS,
          page: () => const HealthConditionsSettingsView(),
          binding: HealthConditionsSettingsBinding(),
        ),
        GetPage(
          name: _Paths.THRIVESCORE,
          page: () => const ThrivescoreView(),
          binding: ThrivescoreBinding(),
        ),
        GetPage(
          name: _Paths.SUBSCRIPTIONSETTINGS,
          page: () => const SubscriptionsettingsView(),
          binding: SubscriptionsettingsBinding(),
        ),
        GetPage(
          name: _Paths.NOTIFICATIONSETTINGS,
          page: () => const NotificationsettingsView(),
          binding: NotificationsettingsBinding(),
        ),
        GetPage(
          name: _Paths.HELPCENTER,
          page: () => const HelpcenterView(),
          binding: HelpcenterBinding(),
        ),
        GetPage(
          name: _Paths.FAQ,
          page: () => const FaqView(),
          binding: FaqBinding(),
        ),
        GetPage(
          name: _Paths.CONTACTUS,
          page: () => const ContactusView(),
          binding: ContactusBinding(),
        ),
        GetPage(
          name: _Paths.TERMSOFUSE,
          page: () => const TermsofuseView(),
          binding: TermsofuseBinding(),
        ),
        GetPage(
          name: _Paths.PRIVACYPOLICY,
          page: () => const PrivacypolicyView(),
          binding: PrivacypolicyBinding(),
        ),
        GetPage(
          name: _Paths.RESETPASSWORDSETTING,
          page: () => const ResetpasswordsettingView(),
          binding: ResetpasswordsettingBinding(),
        ),
        GetPage(
          name: _Paths.PERSONALINFORMATIONSETTINGS,
          page: () => const PersonalinformationsettingsView(),
          binding: PersonalinformationsettingsBinding(),
        ),
      ],
    ),
  ];
}
