import 'package:beta2/switch_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationSwitch extends StatefulWidget {
  const NotificationSwitch({Key? key}) : super(key: key);

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {

  SwitchController switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild Issue");
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('Notification'),
              Obx(() => Switch(
                value: switchController.notification.value,
                onChanged: (value) {
                  switchController.setnotification(value);
                },
                activeColor: Colors.green, // Customize the active color
                activeTrackColor: Colors.lightGreenAccent, // Customize the active track color
                inactiveThumbColor: Colors.grey, // Customize the inactive thumb color
                inactiveTrackColor: Colors.grey.withOpacity(0.5), // Customize the inactive track color
                // contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ))
            ],
          ),
        ],
      ),
    );
  }
}

