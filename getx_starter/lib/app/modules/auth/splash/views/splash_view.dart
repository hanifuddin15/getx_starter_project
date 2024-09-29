import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.navigate();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/logo/user_app_logo.png',
              height: 52,
              width: 57,
            ),
            Image.asset(
              'assets/other/loading.gif',
              height: 52,
              width: 70,
            ),
          ],
        ), //Text('SplashView is working',style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
