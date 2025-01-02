import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_2/app/config/app_assets.dart';
import 'package:getx_starter_2/app/global_components/custom_fonts.dart';
import 'package:getx_starter_2/app/global_components/custom_gradient_elevated_button.dart';
import 'package:getx_starter_2/app/global_components/custom_textformfield.dart';
import 'package:getx_starter_2/app/modules/auth/signup/controllers/signup_controller.dart';
import 'package:getx_starter_2/app/modules/auth/signup/inner_widget/sign_up_top_section.dart';
import 'package:getx_starter_2/app/utils/colors.dart';
import 'package:getx_starter_2/app/utils/responsive.dart';


class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        // ============================= body section =============================
        body: Container(
          height: Responsive.getHeight(context),
          width: Responsive.getWidth(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.APP_BG), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================== top section =============================
              const SignUpTopSection(),
              // =========================== sign up form field section =========================
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 16, vertical: 20),
                  child: Container(
                    padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 24, horizontal: 20),
                    width: Responsive.getWidth(context),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16)),
                    child: Form(
                      key: controller.signUpFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ======================== first name and last name field ==========================
                          Row(
                            children: [
                              // ========================= first name section ===================================
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'First Name',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    CustomTextFormField(
                                      controller:
                                          controller.firstNameController,
                                      hintText: 'John',
                                      hintStyle: CustomTextStyles.interBlack(
                                          color: Colors.grey),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Firstname is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Last Name',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    CustomTextFormField(
                                      controller: controller.lastNameController,
                                      hintText: 'Doe',
                                      hintStyle: CustomTextStyles.interBlack(
                                          color: Colors.grey),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Lastname is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          // ===================================== create password field =============================
                          const Text(
                            'Email Address',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          CustomTextFormField(
                            controller: controller.emailController,
                            hintText: 'johndoe@gmail.com',
                            hintStyle:
                                CustomTextStyles.interBlack(color: Colors.grey),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is required';
                              } else if (!value.contains('@')) {
                                return 'Invalid Email address';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 12),
                          // ============================== create password section ==========================
                          const Text(
                            'Create Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Obx(() {
                            return CustomTextFormField(
                                obscureText:
                                    controller.passwordObscureText.value,
                                controller: controller.passwordController,
                                hintText: 'Type your password',
                                hintStyle: CustomTextStyles.interBlack(
                                    color: Colors.grey),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    controller.passwordObscureText.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.passwordObscureText.value =
                                        !controller.passwordObscureText.value;
                                  },
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Password is required';
                                  } else if (value.toString().length < 8) {
                                    return 'Password must be 8 characters long';
                                  } else if (!controller.passwordRegx
                                      .hasMatch(value)) {
                                    return 'Enter valid password';
                                  }
                                  return null;
                                });
                          }),
                          const SizedBox(height: 12),
                          // =============================== confirm password section =============================
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Obx(() {
                            return CustomTextFormField(
                              obscureText: controller.obscureText.value,
                              controller: controller.confirmPasswordController,
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
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Confirm Password is required';
                                } else if (controller
                                        .confirmPasswordController.text !=
                                    controller.passwordController.text) {
                                  return 'Password do not match';
                                }
                                return null;
                              },
                            );
                          }),
                          const SizedBox(height: 32),
                          CustomGradientElevatedButton(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            text: 'Create Account',
                            fontWeight: FontWeight.bold,
                            gradientColors: const [
                              BUTTON_GRADIENT_FIRST_COLOR,
                              BUTTON_GRADIENT_SECOND_COLOR,
                            ],
                            onPressed: () {
                              if (controller.signUpFormKey.currentState!
                                  .validate()) {
                                controller.sendOtp();
                              }
                            },
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
