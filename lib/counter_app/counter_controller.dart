
import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter=0.obs;

  void add(){
    counter.value++;
  }

  void sub(){
    counter.value--;
  }
}