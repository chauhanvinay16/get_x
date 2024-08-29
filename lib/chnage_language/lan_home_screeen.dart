import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/shared_preferences/app_storage.dart';

class LanHomeScreeen extends StatefulWidget {
  const LanHomeScreeen({super.key});

  @override
  State<LanHomeScreeen> createState() => _LanHomeScreeenState();
}

class _LanHomeScreeenState extends State<LanHomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hy Developers'.tr,textScaleFactor: 2,),
            SizedBox(height: 10,),
            Text('Welcome to the world'.tr,textScaleFactor: 2,),
            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              AppStorage.setcountrycode("US");
              AppStorage.setLanguagecode("em");
              Get.updateLocale(Locale("em","US"));
            }, child: Text('Emglish',style: TextStyle(color: Colors.white),)),

            ElevatedButton(onPressed: () {
              AppStorage.setcountrycode("IN");
              AppStorage.setLanguagecode("hi");
              Get.updateLocale(Locale("hi","IN"));
            }, child: Text('Hindi',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
