// ignore_for_file: unnecessary_import, unused_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:carehealth/View/Pages/profile/setting_screen.dart';
import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/radio_controller.dart';

class Notifications extends StatelessWidget {
  Notifications({
    Key? key,
  }) : super(key: key);
  final NotificationsController controller = Get.put(NotificationsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationsController>(
        init: NotificationsController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Color(0xff2C2C2E),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: CupertinoPageScaffold(
                  backgroundColor: Color(0xff2C2C2E),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                  Get.to(SettingScreen());
                                },
                                icon: Icon(Icons.arrow_back_ios_outlined,
                                    size: 26, color: Colors.white)),
                            SizedBox(
                              width: 80,
                            ),
                            Align(
                              // alignment: Alignment.center,
                              child: Text(
                                "Notifications",
                                textAlign: TextAlign.center,
                                style: Styles.textStyle20Setting,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Text(
                              "Workout Reminders",
                              style: Styles.textStyle18,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            child: CupertinoSwitch(
                              value: controller.state,
                              onChanged: (val) {
                                controller.onChanged(val);
                              },
                              thumbColor: Color(0xFFD0FD3E),
                              activeColor: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(color: Colors.black),
                      Row(
                        children: [
                          SizedBox(
                            child: Text(
                              "Program Notifications",
                              style: Styles.textStyle18,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            child: CupertinoSwitch(
                              value: controller.state,
                              onChanged: (val) {
                                controller.onChanged(val);
                              },
                              thumbColor: Color(0xFF000000),
                              activeColor: Color(0xFFD0FD3E),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(44.0),
                        child: Center(
                          child: RichText(
                            text: TextSpan(children: const <TextSpan>[
                              TextSpan(
                                  text:
                                      "You can manage your app notification \n permission in your ",
                                  style: Styles.textStyleprivacy),
                              TextSpan(
                                  text: "Phone Settings",
                                  style: Styles.textStyleprivacycolor),
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
