

import 'package:get/get.dart';

class SwitchController extends GetxController{

  RxBool notification = false.obs;

  setnotification(bool value){
    notification.value= value;
    print(notification .value);
  }

}