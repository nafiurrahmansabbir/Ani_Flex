import 'package:ani_flex/presentation/state_holder/bottom_nav_bar_controller.dart';
import 'package:get/get.dart';


class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(()=>BottomNavBarController());
  }

}