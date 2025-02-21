import 'package:get/get.dart';

import 'presentation/controller/countdown_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    // Get.put(CountdownController());
    // Get.lazyPut<CountdownController>(() => CountdownController());
  }

}