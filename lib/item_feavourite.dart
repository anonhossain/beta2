import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'favourite_controller.dart';

class ItemFeavourite extends StatefulWidget {
  const ItemFeavourite({super.key});

  @override
  State<ItemFeavourite> createState() => _ItemFeavouriteState();
}

class _ItemFeavouriteState extends State<ItemFeavourite> {

  FavouriteController Controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      body: ListView.builder(
          itemCount: Controller.fruitname.length,
          itemBuilder: (context, index) {
            return Card(
              child:
              Obx(() => ListTile(
                onTap: () {
                  if(Controller.tempfruitlit.contains(Controller.fruitname[index].toString())){
                    Controller.removetofvrt(Controller.fruitname[index].toString());

                  }else
                    Controller.addtofvrt(Controller.fruitname[index].toString());

                },
                title: Text(Controller.fruitname[index].toString()),
                trailing: Icon(
                  Icons.favorite,
                  color: Controller.tempfruitlit.contains(Controller.fruitname[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),
              ),)

            );
          }),
    );
  }
}
