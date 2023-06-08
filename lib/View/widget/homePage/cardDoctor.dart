// ignore_for_file: prefer_typing_uninitialized_variables, depend_on_referenced_packages, unused_import, file_names, prefer_const_constructors, unnecessary_brace_in_string_interps, avoid_print, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:carehealth/View/Pages/home_page/Favourite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/home_page/homeController.dart';
import '../../Pages/home_page/Book_Now.dart';
import '../../Pages/home_page/Speed_Dial.dart';
import '../../Pages/review/trainerDetailPage.dart';

class NewCardDoctorWidget extends StatelessWidget {
  final name;
  final title;
  final num;
  final image;
  NewCardDoctorWidget({
    super.key,
    required this.name,
    required this.title,
    required this.num,
    required this.image,
  });

  final HomeController extController = Get.find();
  var isPressed = false.obs;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: 105,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.transparent,
              blurRadius: 3.0,
              offset: Offset(0.0, 5.0))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(left: 7.0, right: 10.0),
              height: 90,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.amber,
              ),
              child: Image.asset(image)),
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dr: $name',
                  style: TextStyle(
                      color: Color(0xff191919),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: ColorApp.greyColor7,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      isPressed.value = !isPressed.value;
                    },
                    child: Obx(() => Icon(
                          isPressed.value
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: isPressed.value ? Colors.red : Colors.grey,
                          size: 16.0,
                        ))),
                Row(
                  children: [
                    Text(
                      '${num}',
                      style: TextStyle(
                          color: ColorApp.blackColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '($num views)',
                      style: TextStyle(
                          color: ColorApp.greyColor7,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewCardDoctorWidgetThree extends StatelessWidget {
  final name;
  final title;
  final num;
  const NewCardDoctorWidgetThree({
    super.key,
    required this.name,
    required this.title,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        height: 105,
        width: screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.transparent,
                blurRadius: 3.0,
                offset: Offset(0.0, 5.0))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.asset('assets/images/Image3.png')),
            Container(
              margin: EdgeInsets.only(bottom: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Dr: $name',
                        style: TextStyle(
                            color: ColorApp.blackColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 16.0,
                        width: 33.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: ColorApp.blackBlueColor2,
                        ),
                        child: Center(
                          child: Text(
                            '4.3',
                            style: TextStyle(
                                color: ColorApp.backgroundWhaitColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: ColorApp.greenColor3,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: ColorApp.greenColor3,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50.0,
            ),
            SizedBox(),
            InkWell(
                onTap: () {
                  Get.to(TrainerDetail());
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}

class NewCardDoctorWidgetTwo extends StatelessWidget {
  final name;
  final title;
  final num;
  final rech;
  final year;
  final coun;
  final time;
  final image;
  const NewCardDoctorWidgetTwo({
    super.key,
    required this.name,
    required this.title,
    required this.num,
    required this.rech,
    required this.year,
    required this.coun,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      height: 146,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
              color: Colors.transparent,
              blurRadius: 3.0,
              offset: Offset(0.0, 5.0))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(left: 3.0, right: 3.0, bottom: 3.0),
              padding: EdgeInsets.only(top: 5),
              height: 140,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Image.asset(image)),
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr: $name',
                  style: TextStyle(
                      color: ColorApp.blackColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: ColorApp.greyColor7,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30.0,
                ),
                RatingBar.builder(
                  ignoreGestures: true,
                  itemSize: 14.0,
                  initialRating: 3.1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Color(0xffFF6079), size: 24.0),
                Row(
                  children: [
                    Text(
                      '${num / 1000}',
                      style: TextStyle(
                          color: Color(0xff191919),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '($num views)',
                      style: TextStyle(
                          color: ColorApp.greyColor7,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewCardDoctorWidgetTwo_1 extends StatelessWidget {
  final name;
  final title;
  final num;
  final rech;
  final year;
  final coun;
  final time;
  final image;
  NewCardDoctorWidgetTwo_1({
    super.key,
    required this.name,
    required this.title,
    required this.num,
    required this.rech,
    required this.year,
    required this.coun,
    required this.time,
    required this.image,
  });

  final HomeController extController = Get.find();
  var isPressed = false.obs;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      height: 146,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.transparent,
              blurRadius: 3.0,
              offset: Offset(0.0, 5.0))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 7.0, right: 10.0, bottom: 10.0),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.amber,
                  ),
                  child: Image.asset(image)),
              Text(
                'Netx Availabel',
                style: TextStyle(
                    color: Color(0xff191919),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                time,
                style: TextStyle(
                    color: Color(0xffC4C4C4),
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dr: $name',
                  style: TextStyle(
                      color: Color(0xff191919),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xffC4C4C4),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '$year Years experience',
                  style: TextStyle(
                      color: Color(0xffC4C4C4),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '$rech%  $coun Patient Booking',
                  style: TextStyle(
                      color: Color(0xffC4C4C4),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    isPressed.value = !isPressed.value;
                  },
                  child: Obx(() => Icon(
                        isPressed.value
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: isPressed.value ? Colors.red : Colors.grey,
                        size: 16.0,
                      )),
                ),
                Container(
                  height: 41,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xff022A3A),
                  ),
                  child: InkWell(
                      onTap: () {
                        Get.to(Book_Now());
                      },
                      child: Center(
                          child: Text(
                        'Book Now',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
