import 'dart:async';

import 'package:get/get.dart';

class CountdownController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startCountdown();
  }
  var second = 120.obs;
  Timer? _timer;

  void startCountdown() {
    // if(_timer!=null && _timer!.isActive) return;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(second.value>0){
        --second.value;

      }else{
        timer.cancel();
      }
    });
  }
  void resetCountDown(){
    _timer?.cancel();
    second.value=120;
    startCountdown();
  }
}
