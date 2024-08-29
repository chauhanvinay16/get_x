//हाई डेवलपर्स
//दुनिया में आपका स्वागत है

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Language extends Translations{
  @override
  Map<String,Map<String,String>>get keys=>{
    "em_US":{
      "change Language":"change Language",
      "Hy Developers":"Hy Developers",
      "Welcome to the world":"Welcome to the world",
    },
    "hi_IN":{
      "change Language":"भाषा बदलें",
      "Hy Developers":"हाई डेवलपर्स",
      "Welcome to the world":"दुनिया में आपका स्वागत है",
    }
  };
}