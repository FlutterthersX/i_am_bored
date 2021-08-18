import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../manager/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  static String routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'I am bored',
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Image.asset(
              "assets/images/bor.jpg",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Are you bored?',
            style: TextStyle(color: Colors.blueGrey, fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await controller.onGetActivity();
                },
                child: Text('Hmm'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          children: [
                            SimpleDialogOption(
                              child: Text(
                                'Okay Fine',
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        );
                      });
                },
                child: Text('Nah! I\'m good!'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: Obx(
              () => controller.activity.value != null
                  ? Text('${controller.activity.value!.activity}')
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}
