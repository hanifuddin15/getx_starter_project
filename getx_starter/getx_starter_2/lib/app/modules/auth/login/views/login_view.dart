import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/app_assets.dart';
import '../../../../global_components/custom_elevated_button.dart';
import '../../../../global_components/custom_fonts.dart';
import '../../../../global_components/custom_gradient_elevated_button.dart';
import '../../../../global_components/custom_textbutton.dart';
import '../../../../global_components/custom_textformfield.dart';
import '../../../../routes/app_pages.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/responsive.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.purple,
        body: Container(
          height: Responsive.getHeight(context),
          width: Responsive.getWidth(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.APP_BG), fit: BoxFit.cover)),
          child: Column(
            children: [
              // ============================================================ top section ===========================================================================
              Container(
                width: Responsive.getWidth(context),
                padding: const EdgeInsetsDirectional.only(
                    top: 56, start: 16, end: 16, bottom: 28),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppAssets.BG_STACK),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(24), right: Radius.circular(24))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppAssets.APP_LOGO,
                          height: 72,
                          width: 72,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Market Logic',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Sign in to your',
                      style: CustomTextStyles.subtitleInter(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Account',
                      style: CustomTextStyles.subtitleInter(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: CustomTextStyles.subtitleInter(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(Routes
                                    .SIGNUP); // Navigate to the SignUp screen
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ==================== form field section ======================
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.only(
                      top: 20, start: 16, end: 16, bottom: 20),
                  child: Container(
                    padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 24, horizontal: 20),
                    width: Responsive.getWidth(context),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16)),
                    child: Form(
                      key: controller.loginFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ============== email/username field =================
                          const Text(
                            'Email/Username',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            controller: controller.userIdController,
                            hintText: 'johndoe@gmail.com',
                            hintStyle:
                                CustomTextStyles.interBlack(color: Colors.grey),
                          ),
                          const SizedBox(height: 16),
                          // ================= password field =====================
                          const Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Obx(() {
                            return CustomTextFormField(
                              obscureText: controller.obscureText.value,
                              controller: controller.passwordController,
                              hintText: 'Type your password',
                              hintStyle: CustomTextStyles.interBlack(
                                  color: Colors.grey),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  controller.obscureText.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  controller.obscureText.value =
                                      !controller.obscureText.value;
                                },
                              ),
                            );
                          }),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // ============== remember me button
                              CustomTextButton(
                                  padding: EdgeInsets.zero,
                                  activeColor: BUTTON_GRADIENT_SECOND_COLOR,
                                  checkBorderColor:
                                      BUTTON_GRADIENT_SECOND_COLOR,
                                  isCheckBox: true,
                                  isChecked: false,
                                  onChanged: (value) {},
                                  onPressed: () {},
                                  textColor: BUTTON_GRADIENT_SECOND_COLOR,
                                  text: 'Remember me'),
                              // ============= forgot password button
                              CustomTextButton(
                                  padding: EdgeInsets.zero,
                                  isCheckBox: false,
                                  textColor: BUTTON_GRADIENT_SECOND_COLOR,
                                  text: 'Forgot password?',
                                  onPressed: () {
                                    Get.toNamed(Routes.FORGET_PASSWORD);
                                  })
                            ],
                          ),
                          const SizedBox(height: 32),
                          // ================ login button
                          CustomGradientElevatedButton(
                            borderRadius: BorderRadius.circular(15),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            height: 50,
                            text: 'Login',
                            fontWeight: FontWeight.bold,
                            gradientColors: const [
                              BUTTON_GRADIENT_FIRST_COLOR,
                              BUTTON_GRADIENT_SECOND_COLOR,
                            ],
                            onPressed: () {
                              controller.onPressedLogin();
                            },
                          ),
                          const SizedBox(height: 16),
                          // ============== others login divider
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Divider(
                                  indent: 0,
                                  endIndent: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              Text('Or login with',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Inter',
                                  )),
                              Expanded(
                                child: Divider(
                                  indent: 20,
                                  endIndent: 0,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          // =============== others login button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      right: 5), // 5px for half of 10px spacing
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(),
                                    color: Colors.white,
                                  ),
                                  height: 50,
                                  child: const CustomElevatedButton(
                                    imageAsset: AppAssets.GOOGLE_ICON,
                                    fontWeight: FontWeight.w500,
                                    text: 'Google',
                                    textColor: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      left: 5), // 5px for half of 10px spacing
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(),
                                    color: Colors.white,
                                  ),
                                  height: 50,
                                  child: const CustomElevatedButton(
                                    imageAsset: AppAssets.FB_ICON,
                                    fontWeight: FontWeight.w500,
                                    text: 'Facebook',
                                    textColor: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
