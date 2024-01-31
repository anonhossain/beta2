import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'home_screen.dart';

class ProjectAtlanta extends StatefulWidget {
  const ProjectAtlanta({Key? key}) : super(key: key);
  @override
  State<ProjectAtlanta> createState() => _ProjectAtlantaState();
}
class _ProjectAtlantaState extends State<ProjectAtlanta> {

  SlideController slideController = Get.put(SlideController());

  double opacity = 0.4;
  double opacity2 = 0.2;
  double alphaopacity = 0.4;
  final Controller controller = Get.put(Controller());
  // Declare count here
  @override
  Widget build(BuildContext context) {
    print('Rebuild Issue');
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Atlanta'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent.shade100.withOpacity(opacity),
                    ),
                    height: Get.height * 0.5,
                    width: Get.width * 1,
                    child: Center(
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Text(
                            'message'.tr,
                            style: TextStyle(
                                color: Colors.black.withOpacity(alphaopacity),
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Text(
                            'name'.tr,
                            style: TextStyle(
                                color: Colors.black.withOpacity(alphaopacity),
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.incrementCounter();
                          print('$controller.counter');
                          controller.counter % 2 == 0
                              ? Get.updateLocale(Locale('en', 'US'))
                              : Get.updateLocale(Locale('ban', 'BD'));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.translate,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(opacity),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Background:",
                            style: TextStyle(
                                color: Colors.black.withOpacity(alphaopacity),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Slider(
                              value: opacity,
                              onChanged: (value) {
                                print(value);
                                opacity = value;
                                setState(() {});
                              }),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            'Text:',
                            style: TextStyle(
                                color: Colors.black.withOpacity(alphaopacity),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Slider(
                              value: alphaopacity,
                              onChanged: (value) {
                                print(value);
                                alphaopacity = value;
                                setState(() {});
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            // Obx(() => Container(
            //   height: Get.height*0.2,
            //   width: Get.width*0.2,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Colors.red.shade100.withOpacity(opacity2),
            //   ),
            // )
            // ),
            // Obx(() => Slider(
            //     value: opacity2,
            //     onChanged: (value) {
            //       print(value);
            //       opacity2 = value;
            //       setState(() {});
            //     })
            // ),
            SizedBox(height: 10,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(HomeScreen());
        },
        child: Text("Back"),
      ),
    );
  }
}
