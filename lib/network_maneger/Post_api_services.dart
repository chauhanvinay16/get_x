// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
//
// class PostApiServices{
//
//   Future<dynamic>authapi(String email,String password,BuildContext context)async{
//     try{
//       var response= await http.post(Uri.parse('https://dummyjson.com/auth/login'),
//         body: {
//           "username": email,
//           "password": password,
//         }
//       );
//       if(response.statusCode==200){
//         final data=jsonDecode(response.body);
//         print("API RESPONSE:${data}");
//         return data;
//       }
//     }catch(e){
//       print('Error:${e.toString()}');
//     }
//   }
// }