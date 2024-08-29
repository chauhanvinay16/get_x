import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_x/api_services/user_controller.dart';

class ApiWithoutModalScreen extends StatelessWidget {
  const ApiWithoutModalScreen({super.key});
  @override
  Widget build(BuildContext context) {
    UserController userController=Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        title: Text('Without Modal API',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Obx(() => userController.isLoading.value ?
      const Center(child: CircularProgressIndicator(),):
      ListView.builder(
        itemCount: userController.userData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userController.userData[index]['avatar']),
            ),
            title: Text('${userController.userData[index]['first_name']} ${userController.userData[index]['last_name']}'),
            subtitle: Text(userController.userData[index]['email']),
          );
        },
      ),
      ),
    );
  }
}
