import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeIndex(int index) {
    _selectedIndex = index;
    update();
  }

  void selectedIndexAtHome(){
    _selectedIndex=0;
  }

  void backToHome() {
    changeIndex(0);
  }
  void backToCategories() {
    changeIndex(1);
  }

  void backToMyList() {
    changeIndex(2);
  }
  void backToProfile() {
    changeIndex(3);
  }


}
