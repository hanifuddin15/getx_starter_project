import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_2/app/services/api_communication.dart';

import '../../../../config/api_constant.dart';
import '../../../../data/login_credentials.dart';
import '../../../../routes/app_pages.dart';
import '../../../../services/api_response.dart';
import '../../../../utils/snackbar.dart';


class LoginController extends GetxController {
  // ================== variables ==============================================
  late final TextEditingController userIdController;
  late final TextEditingController passwordController;
  Rx<bool> obscureText = true.obs;
  late final GlobalKey<FormState> loginFormKey;
  late ApiCommunication _apiCommunication;
  late LoginCredential _loginCredential;

  // ================================== login ==================================
  void onPressedLogin() async {
    debugPrint(
        '--Log in response starting point-----------------------------------');
    String userId = userIdController.text;
    String password = passwordController.text;
    if (loginFormKey.currentState!.validate()) {
      final ApiResponse response = await _apiCommunication.doPostRequest(
        // enableLoading: true,
        apiEndPoint: 'auth/login',
        requestData: {
          'email': userId,
          'password': password,
        },
        isFormData: false,
        responseDataKey: ApiConstant.FULL_RESPONSE,
      );
      if (response.statusCode == 200) {
        showSuccessSnackkbar(message: 'You are successfully logged in');
        Map<String, dynamic> fullResponse =
            response.data as Map<String, dynamic>;
        debugPrint(fullResponse.toString());
        _loginCredential.handleLoginCredential(fullResponse);
        Get.offAllNamed(Routes.HOME);
      } else {
        showErrorSnackkbar(message: response.message ?? 'Login error');
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    loginFormKey = GlobalKey<FormState>(debugLabel: 'loginKey');
    userIdController = TextEditingController();
    passwordController = TextEditingController();
    _apiCommunication = ApiCommunication();
    _loginCredential = LoginCredential();
  }

  @override
  void onClose() {
    super.onClose();
    userIdController.dispose();
    passwordController.dispose();
    _apiCommunication.endConnection();
  }
}
