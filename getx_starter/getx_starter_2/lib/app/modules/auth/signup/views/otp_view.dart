import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_2/app/config/string_helper.dart';
import 'package:getx_starter_2/app/global_components/custom_gradient_elevated_button.dart';
import 'package:getx_starter_2/app/modules/auth/signup/controllers/signup_controller.dart';
import 'package:getx_starter_2/app/utils/colors.dart';
import 'package:getx_starter_2/app/utils/responsive.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../config/app_assets.dart';

class OtpView extends GetView<SignupController> {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        // ================================ body section ============================
        body: Container(
          height: Responsive.getHeight(context),
          width: Responsive.getWidth(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.APP_BG), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================== top section =========================
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
                    // IconButton(
                    //   onPressed: () => Get.back(),
                    //   icon: const Icon(Icons.arrow_back,
                    //       color: Colors.white, size: 28),
                    // ),
                    // const SizedBox(height: 30),
                    const Text(
                      'Verification Code',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Enter the verification code that we have sent to your email ${StringHelper.obfuscateEmail(controller.emailController.text)}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              // ========================= otp pin code section ==================================
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 20, horizontal: 16),
                  child: Container(
                    padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 24, horizontal: 20),
                    width: Responsive.getWidth(context),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // =============================== pin field ==============================
                        PinCodeTextField(
                          controller: controller.otpController,
                          textStyle: const TextStyle(
                              fontFamily: 'Inter', color: Colors.white),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          appContext: context,
                          length: 4, // Set to 4 fields
                          obscureText: false,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(15),
                            fieldHeight: 50, // Adjust height
                            fieldWidth: 50, // Reduce width to minimize gap
                            activeFillColor: Colors.transparent,
                            inactiveFillColor: Colors.transparent,
                            selectedFillColor: Colors.transparent,
                            activeColor: Colors.grey.shade300,
                            inactiveColor: Colors.grey.shade400,
                            selectedColor: BUTTON_GRADIENT_SECOND_COLOR,
                          ),
                          cursorColor: Colors.white,
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            debugPrint(value);
                          },
                        ),
                        const SizedBox(height: 20),
                        // ========================== confirm button section =======================
                        CustomGradientElevatedButton(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          text: 'Confirm',
                          fontWeight: FontWeight.bold,
                          gradientColors: const [
                            BUTTON_GRADIENT_FIRST_COLOR,
                            BUTTON_GRADIENT_SECOND_COLOR,
                          ],
                          onPressed: () async {
                            await controller.signUp();
                          },
                        ),
                      ],
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
