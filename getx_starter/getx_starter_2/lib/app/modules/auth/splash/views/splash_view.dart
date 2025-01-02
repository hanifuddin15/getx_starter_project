import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_2/app/config/app_assets.dart';
import 'package:getx_starter_2/app/global_components/custom_gradient_elevated_button.dart';
import 'package:getx_starter_2/app/routes/app_pages.dart';
import 'package:getx_starter_2/app/utils/colors.dart';
import 'package:getx_starter_2/app/utils/responsive.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        body: Container(
          height: Responsive.getHeight(context),
          width: Responsive.getWidth(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.ONBOARDING), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomGradientElevatedButton(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  text: 'Let\'s Go',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  gradientColors: const [
                    BUTTON_GRADIENT_FIRST_COLOR,
                    BUTTON_GRADIENT_SECOND_COLOR,
                  ],
                  iconTrailing: (Icons.arrow_forward),
                  onPressed: () {
                    if (controller.loginCredential.getAccessToken() != null) {
                      Get.toNamed(Routes.HOME);
                    } else {
                      Get.toNamed(Routes.LOGIN);
                    }
                  },
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
