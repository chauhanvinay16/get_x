
import 'package:get/get.dart';
import 'package:get_x/home_screen.dart';
import 'package:get_x/second_screen.dart';
import 'package:get_x/shared_preferences/login.dart';

class Routes{
  static const ScreenOne="/screen_one";
  static const ScreenTwo="/screen_two";
  static const loginscreen="/Login_screen";
}

final getpages=[
  GetPage(
      name: Routes.ScreenOne,
      page: ()=>const HomeScreen(),
  ),
  GetPage(
      name: Routes.ScreenTwo,
      page: ()=>const SecondScreen(),
  ),
  GetPage(
      name: Routes.loginscreen,
      page: ()=>LoginPage()
  )
];