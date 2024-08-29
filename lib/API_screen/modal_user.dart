import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/api_services/emp_controller.dart';

class ModalUser extends StatefulWidget {
  const ModalUser({super.key});

  @override
  State<ModalUser> createState() => _ModalUserState();
}

class _ModalUserState extends State<ModalUser> {
  final EmpController empController = Get.put(EmpController());

  @override
  void initState() {
    super.initState();
    empController.getempdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        title: Text('Modal API',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Obx(() => empController.isloading.value
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: empController.empdata.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(empController.empdata[index]['id'].toString()),
            ),
            title: Text(empController.empdata[index]['name']),
            subtitle: Text("Username${empController.empdata[index]['username']} "),
          );
        },
      )
      ),
    );
  }
}


