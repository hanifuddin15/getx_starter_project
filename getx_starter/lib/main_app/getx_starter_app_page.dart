import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_starter/app/config/app_constant.dart';
import 'package:getx_starter/app/config/app_theme.dart';
import 'package:getx_starter/app/routes/app_pages.dart';

class MyStarterApp extends StatelessWidget {
  const MyStarterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstant.APP_NAME,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightTheme,
      darkTheme: dartkTheme,
      themeMode: ThemeMode.light,
      builder: EasyLoading.init(),
    );
  }
}