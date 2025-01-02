import 'package:flutter/material.dart';

import 'package:get_storage/get_storage.dart';
import 'package:getx_starter_2/app/utils/loader.dart';
import 'package:getx_starter_2/getx_starter_2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await GetStorage.init();
  configLoader();

  runApp(const GetXStarter2());
}
