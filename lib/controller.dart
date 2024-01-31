
import 'package:get/get.dart';

class Controller extends GetxController {

  RxInt counter = 1.obs;
  incrementCounter(){
    counter.value++;
    print(counter.value);
  }
}

class SlideController extends GetxController{

  RxDouble opacity = 0.4.obs;
  setOpacity(double value){
    opacity.value = value;

    RxDouble opacity2 = 0.2.obs;
    setOpacity(double value){
      opacity2.value = value;
    }
  }

}