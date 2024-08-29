
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController{
  dynamic loginrespons;
  var isloading=false.obs;

  userdata(String email,String password,BuildContext context)async{
    isloading(true);
    try{
      var response= await http.post(Uri.parse('https://reqres.in/api/login'),
      body: {
        "email": email,
        "password": password,
      },
      );
      if(response.statusCode==200){
        loginrespons=jsonDecode(response.body);
        print("API TOCKEN==>${loginrespons['token']}");
        if(loginrespons['token']!=null){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text('Login Succesfull.'),
            ),
          );
        }
        isloading(false);
      }
    }catch(e){
      print("Error:${e.toString()}");
    }
  }
}