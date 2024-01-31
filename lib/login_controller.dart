import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {

  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  RxBool loading = false.obs;

  void LoginAPi() async {
    loading.value = true;
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailcontroller.value.text, // eamil: eve.holt@reqres.in
        'password': passwordcontroller.value.text, //pass: cityslicka
          });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login Successful', 'Welcome');
      } else {
        loading.value = false;
        Get.snackbar('Login Failed', 'Login is error');
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }
}
