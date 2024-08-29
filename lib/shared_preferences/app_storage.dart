
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage{
  static Future<bool>initmanager()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Get.put(prefs);
    return true;
  }

  static saveTitle(String title){
    SharedPreferences pref=Get.find();
    pref.setString('title', title);
  }

  static String gettitle(){
    SharedPreferences pref=Get.find();
    return pref.getString('title')??"Opps Empty !";
  }

  static removetitle(){
    SharedPreferences pref=Get.find();
    pref.remove('title');
    pref.remove('language_code');
    pref.remove('country_code');
  }

  static setLanguagecode(String languagecode){
    SharedPreferences pref=Get.find();
    pref.setString('language_code', languagecode);
  }

  static String getlanguagecode(){
    SharedPreferences pref=Get.find();
    return pref.getString('language_code')??"em";
  }

  static setcountrycode(String countrycode){
    SharedPreferences pref=Get.find();
    pref.setString('country_code', countrycode);
  }

  static String getcountrycode(){
    SharedPreferences pref=Get.find();
    return pref.getString('country_code')??"us";
  }

}