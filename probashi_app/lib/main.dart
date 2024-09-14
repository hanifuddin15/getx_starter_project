import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:probashi_app/app/utils/loader.dart';
import 'package:probashi_app/main_app/probashi.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  configLoader();
  runApp(const ProbashiApp());
}



