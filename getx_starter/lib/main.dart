import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_starter/app/utils/loader.dart';
import 'package:getx_starter/main_app/getx_starter_app_page.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  configLoader();
  runApp(const MyStarterApp());
}



