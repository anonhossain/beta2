import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login Page')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller.emailcontroller.value,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller.passwordcontroller.value,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),

          ),
          Obx(() {
            return InkWell(
              onTap:(){
                controller.LoginAPi();
              } ,
              child: controller.loading.value? CircularProgressIndicator():
              Container(
                height: 45 ,
                width: 90,
                color: Colors.grey,
                child: Center(
                  child: Text("Login"),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}


