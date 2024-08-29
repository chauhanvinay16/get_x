import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class EmpController extends GetxController{
  var isloading=true.obs;
  var empdata=<dynamic>[].obs;
  
  @override
  void onInit(){
    super.onInit();
    getempdata();
  }

  void getempdata() async{
    try{
      var response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      if(response.statusCode==200){
        empdata.value = jsonDecode(response.body);
        print("API RESPONSE==>${empdata}");
        isloading.value=false;
      }
    }catch(e){
      print("Error:${e.toString()}");
    }
  }
}