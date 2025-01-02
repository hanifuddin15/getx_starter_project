import 'package:get/get.dart';
import 'package:getx_starter_2/app/data/login_credentials.dart';

class SplashController extends GetxController {
  late final LoginCredential loginCredential;

  @override
  void onInit() {
    super.onInit();
    loginCredential = LoginCredential();
  }
}
