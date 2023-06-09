// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rating_summary/rating_summary.dart';
import '../../../constatnt/color_app.dart';
import '../../widget/homePage/bottomWidget.dart';
import '../../widget/homePage/reviewsListWidget.dart';
import 'write__review.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorApp.backgroundWhaitColor,
        body: Container(
          margin: EdgeInsets.only(
            top: 20,
          ),
          color: ColorApp.backgroundWhaitColor,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              //================================== Bar Widget =================================
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 30,
                          bottom: 20,
                          right: MediaQuery.of(context).size.width - 79),
                      child: CircleAvatar(
                        backgroundColor: ColorApp.greyColor6,
                        maxRadius: 22.0,
                        minRadius: 22.0,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              color: Colors.transparent,
                              margin: EdgeInsets.only(left: 7.0),
                              child: Icon(Icons.arrow_back_ios,
                                  color: ColorApp.whiteColor2)),
                        ),
                      ),
                    ),
                    BarWidget(
                      screenWidth: MediaQuery.of(context).size.width,
                    ),
                    //========================= Rateing ======================================
                    RatingWidget(),
                    //======================= Views Comments ====================================
                    ReviewsListCommenets(
                      axis: Axis.vertical,
                      height: MediaQuery.of(context).size.height,
                      leftMar: 0.0,
                      bottomMar: 10.0,
                    ),
                  ],
                ),
              ),
              //==================== Bottom ==========================================
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.75),
                  height: 190,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: list_colors_1)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Bottom_1Widget(
                      text: 'Write a Review',
                      textFont: 'OpenSans',
                      ontap: () {
                        Get.to(WriteReview());
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//==================== Bar Widget =====================================
class BarWidget extends StatelessWidget {
  BarWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;
  var isPressed1 = false.obs;
  var isPressed2 = true.obs;
  var isPressed3 = true.obs;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: screenWidth * 2 / 3 - 40.0,
          child: InkWell(
            onTap: () {
              isPressed3.value = !isPressed3.value;
            },
            child: Obx(
              () => Container(
                height: 28,
                width: screenWidth / 3,
                decoration: BoxDecoration(
                  color: isPressed3.value
                      ? ColorApp.blackBlueColor2
                      : ColorApp.greenColor2,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Center(
                    child: Text(
                  'Favourable',
                  style: TextStyle(
                      color: isPressed3.value
                          ? ColorApp.backgroundWhaitColor
                          : ColorApp.blackColor2,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans'),
                )),
              ),
            ),
          ),
        ),
        Positioned(
          left: screenWidth / 3 - 20.0,
          child: InkWell(
              onTap: () {
                isPressed2.value = !isPressed2.value;
              },
              child: Obx(
                () => Container(
                  height: 28,
                  width: screenWidth / 3,
                  decoration: BoxDecoration(
                    color: isPressed2.value
                        ? ColorApp.blackBlueColor2
                        : ColorApp.greenColor2,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Center(
                      child: Text(
                    'Critical',
                    style: TextStyle(
                        color: isPressed2.value
                            ? ColorApp.backgroundWhaitColor
                            : ColorApp.blackColor2,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'OpenSans'),
                  )),
                ),
              )),
        ),
        Positioned(
          child: InkWell(
              onTap: () {
                isPressed1.value = !isPressed1.value;
              },
              child: Obx(
                () => Container(
                  height: 28,
                  width: screenWidth / 3,
                  decoration: BoxDecoration(
                    color: isPressed1.value
                        ? ColorApp.blackBlueColor2
                        : ColorApp.greenColor2,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Center(
                      child: Text(
                    'Recent',
                    style: TextStyle(
                        color: isPressed1.value
                            ? ColorApp.backgroundWhaitColor
                            : ColorApp.blackColor2,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'OpenSans'),
                  )),
                ),
              )),
        )
      ],
    );
  }
}

//=================== Rating Widget ===================================
class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      height: 120,
      child: Center(
        child: RatingSummary(
          backgroundColor: ColorApp.blackBlueColor2,
          color: ColorApp.greenColor2,
          averageStyle: TextStyle(
              color: ColorApp.greenColor2,
              fontSize: 48,
              fontWeight: FontWeight.w600),
          counter: 13,
          average: 4.6,
          showAverage: true,
          counterFiveStars: 5,
          counterFourStars: 4,
          counterThreeStars: 2,
          counterTwoStars: 1,
          counterOneStars: 1,
        ),
      ),
    );
  }
}
