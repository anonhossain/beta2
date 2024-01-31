
import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitname = ['Orange', 'Mango', 'Banana', 'Apple'].obs;
  RxList tempfruitlit = [].obs;

  addtofvrt(String value){
    tempfruitlit.add(value);
}
  removetofvrt(String value){
    tempfruitlit.remove(value);
  }


}