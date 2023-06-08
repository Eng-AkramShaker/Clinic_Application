// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding/onBoarding_controller.dart';

class NextButtomWidget extends GetView<OnBoardingControllerImp> {
  NextButtomWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            controller.nextPage();
          },
          child: const Text(
            "Next",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
