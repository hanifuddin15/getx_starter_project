import 'package:get/get.dart';

import '../modules/auth/complete_profile/bindings/complete_profile_binding.dart';
import '../modules/auth/complete_profile/views/complete_profile_view.dart';
import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/signup/bindings/signup_binding.dart';
import '../modules/auth/signup/views/otp_view.dart';
import '../modules/auth/signup/views/signup_view.dart';
import '../modules/auth/splash/bindings/splash_binding.dart';
import '../modules/auth/splash/views/splash_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () => const HomeView(),
    //   binding: HomeBinding(),
    // ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.COMPLETE_PROFILE,
      page: () => const CompleteProfileView(),
      binding: CompleteProfileBinding(),
    ),
    // GetPage(
    //   name: _Paths.NOTICE,
    //   page: () => const NoticeListView(),
    //   binding: NoticeListBinding(),
    // ),
    // GetPage(
    //   name: _Paths.NOTICE_DETAILS,
    //   page: () => const NoticeDetailsView(),
    //   binding: NoticeDetailsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.SIGNAL_DETAILS,
    //   page: () => const SignalDetailsView(),
    //   binding: SignalDetailsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.SIGNAL_DETAILS_LIST,
    //   page: () => const SignalDetailsListView(),
    //   binding: SignalDetailsListBinding(),
    // ),
    // GetPage(
    //   name: _Paths.COURSE_LIST,
    //   page: () => const CourseListView(),
    //   binding: CourseListBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PROFILE,
    //   page: () => const UserProfileView(),
    //   binding: UserProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.COURSE_DETAILS,
    //   page: () => const CourseDetailsView(),
    //   binding: CourseDetailsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.LIVE_CLASS,
    //   page: () => const LiveClassView(),
    //   binding: LiveClassBinding(),
    // ),
    // GetPage(
    //   name: _Paths.USER_CALL,
    //   page: () => const UserCallView(),
    //   binding: UserCallBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_PROFILE,
    //   page: () => const EditProfileView(),
    //   binding: EditProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.FORGET_PASSWORD_OTP,
    //   page: () => const ForgetPasswordOtpView(),
    //   binding: ForgetPasswordOtpBinding(),
    // ),
    // GetPage(
    //   name: _Paths.FORGET_PASSWORD,
    //   page: () => const ForgetPasswordView(),
    //   binding: ForgetPasswordBinding(),
    // ),
    // GetPage(
    //   name: _Paths.NEW_PASSWORD,
    //   page: () => const NewPasswordView(),
    //   binding: NewPasswordBinding(),
    // ),
  ];
}
