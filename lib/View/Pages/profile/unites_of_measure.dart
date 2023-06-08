//import 'dart:js_util';

import 'package:carehealth/View/Pages/profile/setting_screen.dart';
//import 'package:carehealth/View/widget/drawer/drawer_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../constatnt/font_app_styles.dart';
import '../../../controller/radio_controller.dart';

class UnitsOfMeasure extends StatelessWidget {
  RadioController controller = Get.put(RadioController());

  UnitsOfMeasure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2C2E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Container(
                height: 120,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(const SettingScreen());
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 26,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      "Units Of Measure",
                      textAlign: TextAlign.center,
                      style: Styles.textStyle20Setting,
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Text(
                        "Metric",
                        style: Styles.textStyle18,
                      ),
                      const Spacer(),
                      Obx(() => Transform.scale(
                            scale: 1.5,
                            child: Radio(
                              value: "Metric",
                              groupValue: controller.selectorderType.value,
                              onChanged: (dynamic value) {
                                controller.onChangeRadio(value);
                                //  print(RadioController.setOrderType(value));
                              },
                              activeColor: ColorApp.radioButtom,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const Divider(color: Colors.black),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Text(
                        "Imperial",
                        style: Styles.textStyle18,
                      ),
                      const Spacer(),
                      Obx(
                        () => Transform.scale(
                          scale: 1.5,
                          child: Radio(
                            value: "Imperial",
                            groupValue: controller.selectorderType.value,
                            onChanged: (dynamic value) {
                              controller.onChangeRadio(value);
                            },
                            activeColor: ColorApp.radioButtom,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../controller/radio_controller.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     Get.put(ButtonController());
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           body: SizedBox(
//             height: 500,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 OrderTypeButton(
//                     value: "take_away",
//                     title: "Take away",
//                     amount: 10,
//                     isFree: true),
//                 OrderTypeButton(
//                     value: "home_delivery",
//                     title: "Home delivery",
//                     amount: 10,
//                     isFree: false)
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class OrderTypeButton extends StatelessWidget {
//   final String value;
//   final String title;
//   final double amount;
//   final bool isFree;

//   const OrderTypeButton(
//       {required this.value,
//       required this.title,
//       required this.amount,
//       required this.isFree});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<ButtonController>(
//       builder: (buttonController) {
//         return InkWell(
//           onTap: () => buttonController.setOrderType(value),
//           child: Row(
//             children: [
//               Radio(
//                 value: value,
//                 groupValue: buttonController.orderType,
//                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                 onChanged: (String? value) {
//                   //buttonController.setOrderType(value!);
//                 },
//                 activeColor: Theme.of(context).primaryColor,
//               ),
//               const SizedBox(width: 10),
//               Text(
//                 title,
//               ),
//               const SizedBox(width: 5),
//               Text(
//                 '(${(value == 'take_away' || isFree) ? 'free' : amount != -1 ? '\$${amount / 10}' : 'calculating'})',
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
