import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter_app/counter_controller.dart';

class CounterScreenHome extends GetView<CounterController> {
  const CounterScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                  () => Text(
                controller.counter.toString(),
                textScaleFactor: 5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.exposure_minus_1,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller.sub();
                    print(controller.counter);
                  },
                ),
                SizedBox(width: 30),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.exposure_plus_1,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller.add();
                    print(controller.counter);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
