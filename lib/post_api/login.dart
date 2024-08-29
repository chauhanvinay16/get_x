import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/getx_controller/login_controller.dart';

class Loginscreenapi extends StatefulWidget {
  const Loginscreenapi({super.key});

  @override
  State<Loginscreenapi> createState() => _LoginscreenapiState();
}

class _LoginscreenapiState extends State<Loginscreenapi> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  LoginController loginController=Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        title: Text('Login',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                decoration:const InputDecoration(
                  hintText: 'Enter Email'
                ),
              ),
              TextField(
                controller: password,
                decoration:const InputDecoration(
                    hintText: 'Enter Password'
                ),
              ),
              const SizedBox(height: 20,),

              SizedBox(
                height: 50,
                width: 250,
                child: Obx(()=>ElevatedButton(
                    style:  ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      loginController.userdata(
                          email.text,
                          password.text,
                          context,
                      );
                    }, child: loginController.isloading.value?Center(child: CircularProgressIndicator(),):
                              Text('Login',style: TextStyle(fontSize: 18),)),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
