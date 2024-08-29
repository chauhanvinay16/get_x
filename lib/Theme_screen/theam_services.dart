
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TheamServices {
  final _getstore=GetStorage();
  final _key="theamdata";

  ThemeMode get theme=>_loadTheamFromBox()? ThemeMode.dark:ThemeMode.light;

  bool _loadTheamFromBox()=>_getstore.read(_key)??false;
  _saveTheamBox(bool isTheamDark)=>_getstore.write(_key, isTheamDark);

  void switchTheme(){
    Get.changeThemeMode(_loadTheamFromBox()? ThemeMode.light:ThemeMode.dark);
    _saveTheamBox(!_loadTheamFromBox());
  }

}