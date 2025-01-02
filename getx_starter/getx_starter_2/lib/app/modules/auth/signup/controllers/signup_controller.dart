import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_2/app/routes/app_pages.dart';
import 'package:getx_starter_2/app/services/api_communication.dart';
import 'package:getx_starter_2/app/services/api_response.dart';
import 'package:getx_starter_2/app/utils/snackbar.dart';


class SignupController extends GetxController {
  // ==================== regx =================================================
  RegExp passwordRegx =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  // ==================== variables ============================================
  late final ApiCommunication _apiCommunication;
  Rx<DateTime> selectedDate = DateTime.now().obs;
  Rx<double> year = 0.0.obs;
  RxString otp = ''.obs;
  var remainingSeconds = 60.obs; // For countdown timer
  var resendEnabled = true.obs; // To enable/disable resend button
  Timer? timer;
  Rx<bool> passwordObscureText = true.obs;
  Rx<bool> obscureText = true.obs;

  // ===================== field controller ====================================
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController confirmPasswordController;
  late TextEditingController passwordController;
  late TextEditingController otpController;

  // ====================== global key variable ================================
  late final GlobalKey<FormState> signUpFormKey;

  // ====================== send otp ===========================================
  void sendOtp() async {
    ApiResponse apiResponse = await _apiCommunication.doPostRequest(
      apiEndPoint: 'auth/email-verification',
      requestData: {
        'email': emailController.text,
      },
    );

    if (apiResponse.isSuccessful) {
      showSuccessSnackkbar(message: '${apiResponse.message}');
      Get.offAndToNamed(Routes.OTP);
    } else {
      showErrorSnackkbar(message: '${apiResponse.message}');
    }
  }

  // =========================== Method to start the OTP resend timer ========================
  void startOtpResendTimer() {
    remainingSeconds.value = 120;
    resendEnabled.value = false;

    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 120), (timer) {
      if (remainingSeconds.value > 0) {
        remainingSeconds.value--;
      } else {
        resendEnabled.value = true;
        timer.cancel();
      }
    });
  }

  // ===================================== method for resend otp ================================
  void resendOtp(String email) {
    debugPrint('Resending OTP to email: $email');
    startOtpResendTimer();
  }

  // ====================================== method for sign up ===================================
  Future<void> signUp() async {
    final ApiResponse apiResponse = await _apiCommunication.doPostRequest(
      apiEndPoint: 'auth/student/sign-up',
      requestData: {
        'first_name': firstNameController.text,
        'last_name': lastNameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'otp': otpController.text
      },
    );
    if (apiResponse.isSuccessful) {
      showSuccessSnackkbar(message: 'Account created successfully');
      Get.offAllNamed(Routes.COMPLETE_PROFILE);
    } else {
      showErrorSnackkbar(message: 'API Error');
    }
  }

  // =================================== onInit method =======================================
  @override
  void onInit() {
    super.onInit();
    _apiCommunication = ApiCommunication();
    signUpFormKey = GlobalKey<FormState>();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    confirmPasswordController = TextEditingController();
    passwordController = TextEditingController();
    otpController = TextEditingController();
  }

  // ================================= onClose method ======================================
  @override
  void onClose() {
    super.onClose();
    _apiCommunication.endConnection();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    confirmPasswordController.dispose();
    passwordController.dispose();
  }
}
