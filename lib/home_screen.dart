import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/API_screen/api_without_modal_screen.dart';
import 'package:get_x/API_screen/modal_user.dart';
import 'package:get_x/Theme_screen/theam_services.dart';
import 'package:get_x/chnage_language/lan_home_screeen.dart';
import 'package:get_x/counter_app/counter_screen_home.dart';
import 'package:get_x/image/image_screen.dart';
import 'package:get_x/post_api/login.dart';
import 'package:get_x/route.dart';
import 'package:get_x/second_screen.dart';
import 'package:get_x/shared_preferences/app_storage.dart';
import 'package:get_x/shared_preferences/login.dart';
import 'package:get_x/shared_preferences/shared_preferences_screen.dart';

import 'auth/auth_login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Get-x',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.deepPurple,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: TheamServices().switchTheme,
                  child: Icon(Icons.sunny,color: Colors.white,)),
            )
          ],
        ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("Hello Flutter Developers",textScaleFactor: 2,),
          ),
          SizedBox(height: 5,),
          Center(
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.blue,
              foregroundColor: Colors.white
            ),
                onPressed: () {
              // Get.to(()=>SecondScreen(title: 'Flutter Devloper',));
              Get.toNamed(Routes.ScreenTwo,
              arguments: {
                "title":"Flutter",
                "description":"this is a cross platform appliction devlopment",
              }
              );
            }, child: Text('Second Screen')),
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),
              onPressed: () {
              Get.to(()=>ImageScreen());
          }, child: Text('Image_Picker')),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                AppStorage.saveTitle('Hello Vinay  ');
                Get.to(()=>const SharedPreferencesScreen());
              }, child: Text('shared_preferences')),


          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                Get.toNamed(Routes.loginscreen);
              }, child: Text('Login')),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                Get.to(()=>LanHomeScreeen());
              }, child: Text('Change_language')),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              onPressed: () {
                Get.to(()=>CounterScreenHome());
              }, child: Text('Counter_app')),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                    ),
                    onPressed: () {
                      Get.to(()=>ModalUser());
                    }, child: Text('Api_without_modal')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                    ),
                    onPressed: () {
                      Get.to(()=>AuthLogin());
                    }, child: Text('Api_with_modal')),
              ),
            ],
          )

          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.blue,
          //       foregroundColor: Colors.white
          //     ),
          //     onPressed: TheamServices().switchTheme,
          //     child: Text('Change Theme'))
        ],
      ),
      // body: Center(
      //   child: GestureDetector(
      //     onTap: () {
      //       // Get.snackbar('Payment Done', "Rs=200 payment is done.",
      //       // snackPosition: SnackPosition.BOTTOM,
      //       //   icon: Icon(Icons.arrow_forward_ios),
      //       // );
      //       // Get.bottomSheet(
      //       //     Container(
      //       //       height: 200,
      //       //       color: Colors.grey,
      //       //       child: Column(
      //       //         children: [
      //       //           Row(
      //       //             children: [
      //       //               Icon(Icons.add),
      //       //               Text('Add data')
      //       //             ],
      //       //           )
      //       //         ],
      //       //       ),
      //       //     )
      //       // );
      //       Get.defaultDialog(
      //         title: 'Flutter Devloper',
      //         middleText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      //         cancel: ElevatedButton(onPressed: () {
      //
      //         }, child: Text('Cancle')),
      //         confirm: ElevatedButton(onPressed: () {
      //
      //         }, child: Text('Submit')),
      //
      //       );
      //
      //     },
      //     child: Container(
      //       height: Get.height*.1,
      //       width: Get.width*.5,
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
    );
  }
}
