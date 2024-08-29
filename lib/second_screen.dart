import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final args=Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen',style: TextStyle(color: Colors.white),),
        leading: BackButton(color: Colors.white,
        onPressed: () {
          Get.back();
        },
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text(args['title'],textScaleFactor: 3,),
            ),
          ),
          Text(args['description'])
        ],
      )
    );
  }
}
