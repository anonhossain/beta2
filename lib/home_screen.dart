import 'package:beta2/project_atlanta.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Jindabad"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Card(
              color: Colors.lightBlue.shade50,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text('Delete',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                subtitle: Text('This will delete the section'),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete!',
                    middleText: 'Are you sure want to delete the chat?',
                    titlePadding: EdgeInsets.all(20),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    confirm: TextButton(
                      onPressed: () {
                        Get.back();
                        Get.snackbar(
                          'Deleted',
                          'The messages have been deleted',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      },
                      child: Text('OK'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        foregroundColor:
                        MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    cancel: TextButton(
                      onPressed: () {
                        Get.back();
                        Get.snackbar(
                          'Cancel',
                          'The messages have not been deleted',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      },
                      child: Text('Cancel'),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Card(
              color: Colors.lightBlue.shade50,
              borderOnForeground: true,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text('Theme',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                subtitle: Text('Bottom Sheet has been used to select Theme'),
                onTap: () {
                  Get.bottomSheet(
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                          color: Colors.grey.shade100,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10),
                              child: Card(
                                color: Colors.lightBlue.shade50,
                                shadowColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListTile(
                                  leading: Icon(Icons.light_mode),
                                  title: Text('Light Theme',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300)),
                                  onTap: () {
                                    Get.changeTheme(ThemeData.light());
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10),
                              child: Card(
                                color: Colors.lightBlue.shade50,
                                shadowColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListTile(
                                  leading: Icon(Icons.dark_mode),
                                  title: Text('Dark Theme',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300)),
                                  onTap: () {
                                    Get.changeTheme(ThemeData.dark());
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              Get.snackbar(
                'Anon Hossain',
                'Flutter developer',
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            label: Text('Show Snackbar'),
            icon: Icon(Icons.add),
            tooltip: 'Snackbar Button',
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),

            ),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
             Get.to(ProjectAtlanta());
            },
            tooltip: 'Second Button',
            child: Icon(Icons.star),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
