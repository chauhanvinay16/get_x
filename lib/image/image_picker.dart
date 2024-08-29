import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
  RxString imagePath="".obs;

  Future<void>getImage(ImageSource source)async{
    final ImagePicker imagePicker=ImagePicker();
    final imageSource =await imagePicker.pickImage(source: source);

    if(imageSource==null){
      Get.snackbar("Error", "Pleass Select Image",
      snackPosition: SnackPosition.BOTTOM
      );
    }else{
      imagePath.value=imageSource.path.toString();
    }
  } 
}