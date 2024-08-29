import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x/Theme_screen/theam.dart';
import 'package:get_x/Theme_screen/theam_services.dart';
import 'package:get_x/chnage_language/language.dart';
import 'package:get_x/getx_controller/auth_controller.dart';
import 'package:get_x/home_screen.dart';
import 'package:get_x/route.dart';
import 'package:get_x/shared_preferences/app_storage.dart';

void main() async{
  await GetStorage.init();
  await AppStorage.initmanager();
  // await AuthController().getToken();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      locale: Locale(AppStorage.getlanguagecode(),AppStorage.getcountrycode()),
      fallbackLocale: Locale("en","US"),
      translations: Language(),
      themeMode: TheamServices().theme,
      // home: HomeScreen(),
      initialRoute: Routes.ScreenOne,
      getPages: getpages,
    );
  }
}


