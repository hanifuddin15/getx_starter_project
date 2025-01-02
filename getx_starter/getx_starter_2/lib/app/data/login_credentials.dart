import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_starter_2/app/modules/auth/login/models/user_login_model.dart';
import 'package:getx_starter_2/app/utils/role_type_utils.dart';

import '../config/app_storage.dart';
import '../enum/user_role.dart';
import '../routes/app_pages.dart';

class LoginCredential {
  late final GetStorage _getStorage;
  LoginCredential() {
    _getStorage = GetStorage();
  }

  void handleLoginCredential(Map<String, dynamic> loginResponse) {
    // Extracting User details from the response
    User user = User.fromMap(loginResponse['results']['user']);

    // Saving user data
    saveUserData(user);

    // saving user role
    saveUserRole(user.role?.role ?? '');

    changeUserAuthState(true);

    String? accessToken = loginResponse['results']['accessToken'];
    if (accessToken != null) {
      saveAccessToken(accessToken);
      debugPrint('Access token saved successfully: $accessToken');
    } else {
      debugPrint('Access token is null. Unable to save.');
    }
  }

//================================================================ User Data ================================================================//
  void saveUserData(User model) {
    _getStorage.write(AppStorage.USER_DATA_KEY, model.toMap());
  }

  User getUserData() {
    User model = User.fromMap(_getStorage.read(AppStorage.USER_DATA_KEY));
    return model;
  }

//================================================================ Access Token ================================================================//
  void saveAccessToken(String accessToken) {
    _getStorage.write(AppStorage.ACCESS_TOKEN, accessToken);
  }

  String? getAccessToken() {
    String? accessToken = _getStorage.read(AppStorage.ACCESS_TOKEN);
    return accessToken;
  }

  // ============================================================= User Role =====================================================
  void saveUserRole(String userRole) {
    _getStorage.write(AppStorage.USER_ROLE, userRole);
  }

  UserRole getUserRole() {
    String? userRole = _getStorage.read(AppStorage.USER_ROLE);
    return getUserRoleEnumFromType(userRole ?? '');
  }

//================================================================ Refresh Token ================================================================//

  void saveRefreshToken(String refreshToken) {
    _getStorage.write(AppStorage.REFRESH_TOKEN, refreshToken);
  }

  String? getRefreshToken() {
    String? refreshToken = _getStorage.read(AppStorage.REFRESH_TOKEN);
    return refreshToken;
  }
//================================================================ Auth State ================================================================//

  void changeUserAuthState(bool isLoggedIn) {
    _getStorage.write(AppStorage.AUTH_STATE_KEY, isLoggedIn);
  }

  bool isUserLoggedIn() {
    bool? isLoggedIn = _getStorage.read(AppStorage.AUTH_STATE_KEY);
    return isLoggedIn ?? false;
  }

  void clearLoginCredential() {
    _getStorage.remove(AppStorage.USER_DATA_KEY);
    _getStorage.remove(AppStorage.AUTH_STATE_KEY);
    _getStorage.remove(AppStorage.REFRESH_TOKEN);
    _getStorage.remove(AppStorage.ACCESS_TOKEN);
    _getStorage.remove(AppStorage.USER_ROLE);
  }

  void clearLoginCredentialAndMoveToLogin() {
    _getStorage.remove(AppStorage.USER_DATA_KEY);
    _getStorage.remove(AppStorage.AUTH_STATE_KEY);
    _getStorage.remove(AppStorage.REFRESH_TOKEN);
    _getStorage.remove(AppStorage.ACCESS_TOKEN);
    _getStorage.remove(AppStorage.USER_ROLE);
    Get.offAllNamed(Routes.LOGIN);
  }
}
