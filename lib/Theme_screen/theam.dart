
import 'package:flutter/material.dart';

class Themes{
  static final light=ThemeData.light().copyWith(
      primaryColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
          )
      )
  );


  static final dark=ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey
      )
    )
  );
}