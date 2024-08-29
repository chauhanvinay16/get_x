import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/image/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  ImagePickerController imagePickerController=ImagePickerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        backgroundColor: Colors.deepPurple,
        title: Text('Image Pickeer',style: TextStyle(color: Colors.white),),
      ),
      body: Obx((){
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.black
                    )
                ),
                child: Center(
                  child: imagePickerController.imagePath.isEmpty ?
                  const Text('Select Image'):
                  Image.file(File(imagePickerController.imagePath.toString())),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white
                ),
                onPressed: () {
                  imagePickerController.getImage(ImageSource.gallery);
                },
                child:  imagePickerController.imagePath.isEmpty ?
              Text("Pick Image"):
              Text('Chnage image'),
              ),
            )
          ],
        );
      })
    );
  }
}
