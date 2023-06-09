// ignore_for_file: depend_on_referenced_packages, file_names, prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace, avoid_print, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/home_page/homeController.dart';
import '../../Pages/review/trainerDetailPage.dart';

class NewWidgetBestDoctorOne extends StatelessWidget {
  final dynamic num;
  final image;
  final title;
  final name;
  const NewWidgetBestDoctorOne({
    super.key,
    required this.num,
    required this.image,
    required this.title,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 17.0, top: 3.0, bottom: 5.0),
        height: 170,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.transparent,
                blurRadius: 3.0,
                offset: Offset(1.0, 5.0))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(height: 90, width: 120, child: Image.asset('$image')),
            Text(
              'Dr: $name',
              style: TextStyle(
                  color: ColorApp.blackColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: TextStyle(
                  color: ColorApp.greenColor3,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 16.0,
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
    );
  }
}

class WidgetBestDoctorOne_1 extends StatelessWidget {
  final num;
  final image;
  final hour;
  final name;
  WidgetBestDoctorOne_1({
    super.key,
    required this.num,
    required this.image,
    required this.hour,
    required this.name,
  });

  final HomeController extController = Get.find();
  var isPressed = false.obs;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(TrainerDetail());
      },
      child: Container(
        margin: EdgeInsets.only(right: 17.0, top: 3.0, bottom: 5.0),
        width: 98,
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.transparent,
                blurRadius: 3.0,
                offset: Offset(1.0, 5.0))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          size: 13.0,
                        )),
                  ),
                  Text(
                    '$num',
                    style: TextStyle(color: Color(0xff191919), fontSize: 10.0),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 30,
              child: Image.asset('$image'),
            ),
            Text(
              'Dr: $name',
              style: TextStyle(
                  color: ColorApp.blackColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$',
                    style: TextStyle(color: ColorApp.greenColor3),
                  ),
                  Text(
                    '$hour/hours',
                    style:
                        TextStyle(color: ColorApp.blackColor, fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidgetBestDoctorTwo extends StatelessWidget {
  final image;
  final name;
  final title;
  const NewWidgetBestDoctorTwo({
    super.key,
    required this.image,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(TrainerDetail());
      },
      child: Container(
        margin: EdgeInsets.only(right: 17.0, top: 3.0, bottom: 5.0),
        width: 187,
        height: 263,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.transparent,
                blurRadius: 3.0,
                offset: Offset(1.0, 5.0))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 163,
              width: 138,
              margin: EdgeInsets.only(bottom: 20.0),
              child: Image.asset('$image'),
            ),
            Text(
              'Dr: $name',
              style: TextStyle(
                  color: ColorApp.blackColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: TextStyle(
                color: ColorApp.blackColor,
                fontSize: 12.0,
              ),
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 16.0,
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
    );
  }
}

class NewWidgetBestDoctorThree extends StatelessWidget {
  final num;
  final image;
  final title;
  final name;
  final like;
  NewWidgetBestDoctorThree({
    super.key,
    required this.num,
    required this.image,
    required this.title,
    required this.name,
    required this.like,
  });

  final HomeController extController = Get.find();
  var isPressed = false.obs;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(TrainerDetail());
      },
      child: Stack(
        children: [
          Container(
            width: 131,
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 3.0,
                    offset: Offset(1.0, 5.0))
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
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
                              size: 13.0,
                            )),
                      ),
                      SizedBox(),
                      Text(
                        '$num',
                        style: TextStyle(
                            color: ColorApp.blackColor,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 50,
                  child: Image.asset('$image'),
                ),
                Text(
                  'Dr: $name',
                  style: TextStyle(
                      color: ColorApp.blackColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ),
                RatingBar.builder(
                  ignoreGestures: true,
                  itemSize: 16.0,
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
                ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: ColorApp.greenColor3,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
