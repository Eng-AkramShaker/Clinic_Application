// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers

import 'package:carehealth/View/Pages/Trainer/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/home_page/homeController.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/divider.dart';
import '../accounts/forgot_password.dart';
import '../profile/notifications.dart';

class AppSetting extends StatelessWidget {
  AppSetting({super.key});

  final HomeController extController =
      Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorApp.whiteColor,
      //================== AppBar ==========================
      appBar: AppBar(
        // =============== Remove Screen Window ===============
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),

        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorApp.whiteColor),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        ),
        centerTitle: true,
        elevation: 0,
        shadowColor: ColorApp.whiteColor,
        backgroundColor: ColorApp.whiteColor,
        titleTextStyle: TextStyle(
            color: ColorApp.blackColor2,
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'BebasNeue'),
        title: Text(
          'App Setting',
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: ColorApp.blackColor2,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35)),
          color: ColorApp.whiteColor,
        ),
        // =========== ListView Widget ================================
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(Notifications());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 45,
                child: LeftRowWidget(
                    text: 'Reminder', icon: Icons.notifications_none),
              ),
            ),
            NewDividerWidget(),
            InkWell(
              onTap: () {
                Get.to(Forgot_Password());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 45,
                child: LeftRowWidget(
                    text: 'Change Password', icon: Icons.lock_outlined),
              ),
            ),
            NewDividerWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftRowWidget(
                      text: 'Apple Health', icon: Icons.favorite_outline),
                  Expanded(child: SizedBox()),
                  Transform.scale(
                      scale: 1,
                      child: Obx(
                        () => CupertinoSwitch(
                          trackColor: ColorApp.greyColor4,
                          activeColor: ColorApp.greenColor2,
                          value: extController.isPressed1.isFalse,
                          onChanged: (bool change) {
                            extController.isPressed1.value =
                                !extController.isPressed1.value;
                          },
                        ),
                      )),
                ],
              ),
            ),
            NewDividerWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftRowWidget(
                      text: 'Dark Mode', icon: Icons.dark_mode_outlined),
                  Expanded(child: SizedBox()),
                  Transform.scale(
                    scale: 1,
                    child: Obx(
                      () => CupertinoSwitch(
                        trackColor: ColorApp.greyColor4,
                        activeColor: ColorApp.greenColor2,
                        value: extController.isPressed2.isTrue,
                        onChanged: (bool change) {
                          extController.isPressed2.value =
                              !extController.isPressed2.value;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            NewDividerWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              child: Row(
                children: [
                  LeftRowWidget(text: 'Language', icon: Icons.language),
                  Expanded(child: SizedBox()),
                  Container(
                      child: Obx(
                    () => DropdownButton(
                      value: extController.selectedItem.value,
                      items: extController.items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? item) {
                        extController.updateSelectedItem(item!);
                      },
                    ),
                  )),
                ],
              ),
            ),
            NewDividerWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            //=====================upgrade ===============================
            InkWell(
              onTap: () {
                Get.to(Payment());
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 50),
                height: 93,
                width: 317,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorApp.greyColor6,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      height: 22,
                      width: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorApp.redColor,
                      ),
                      child: Center(
                        child: Text(
                          'PRO',
                          style: TextStyle(
                              color: ColorApp.whiteColor2,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Upgrade to Premium',
                            style: TextStyle(
                                color: ColorApp.whiteColor2,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'OpenSans'),
                          ),
                          Expanded(child: SizedBox()),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: ColorApp.whiteColor2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'This subscription is auto-renewable',
                        style: TextStyle(
                            color: ColorApp.whiteColor2,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'OpenSans'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ================ Bottom Widget ==================================
            Bottom_1Widget(
              text: 'Upgrade premium',
              textFont: 'BebasNeue',
              ontap: () {
                Get.to(Payment());
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            // ============= Version Text =====================================
            Center(child: Text('Version 1.0')),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

//================ LeftRowWidget =========================
class LeftRowWidget extends StatelessWidget {
  //============== Required Varaibles =======================
  final text;
  final IconData icon;

  const LeftRowWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: ColorApp.blackColor2,
          size: 30,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          selectionColor: ColorApp.blackColor2,
        ),
        SizedBox(width: 100)
      ],
    );
  }
}
//=======================================commit
//=======================================commit2