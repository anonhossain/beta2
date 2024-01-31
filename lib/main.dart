import 'package:beta2/notification_switch.dart';
import 'package:beta2/project_atlanta.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'Languages.dart';
import 'home_screen.dart';
import 'item_feavourite.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home:Login(),
        //home: ItemFeavourite(),
        //home:NotificationSwitch(),
      //home:HomeScreen(),
      getPages: [
        GetPage(name: '/Home', page: () => HomeScreen()),
        GetPage(name: "/ProjectAtlanta", page: () => ProjectAtlanta())
      ],
    );
  }
}
