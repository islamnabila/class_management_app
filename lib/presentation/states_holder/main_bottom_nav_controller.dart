import 'package:get/get.dart';

class MainBottomNavController extends GetxController{
  int _selectIndex = 0;
  int get currentIndex => _selectIndex;
  void changeIndex(int index){
    if(_selectIndex == index){
      return;
    }
    _selectIndex =index;
    update();
  }
  void backToHome(){
    changeIndex(0);
  }
}