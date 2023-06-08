// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:carehealth/View/Pages/profile/setting_screen.dart';
import 'package:carehealth/constatnt/font_app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import '../../../constatnt/color_app.dart';

class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Color(0xff2C2C2E),
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(SettingScreen());
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined,
                          size: 26, color: Colors.black)),
                  SizedBox(
                    width: 80,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Privacy Policy",
                      textAlign: TextAlign.center,
                      style: Styles.textStyle20Settingcolor,
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: const <TextSpan>[
                              TextSpan(
                                text: "Lorem ipsum dolor sit amet\n",
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text:
                                    "\n Consectetur adipiscing elit.Natoque phasellus lobortis mattis cursus faucibus hac proin risus. Turpis phasellus massa ullamcorper volutpat. Ornare commodo non integer fermentum nisi, morbi id. Vel tortor mauris feugiat amet, maecenas facilisis risus, in faucibus. Vestibulum ullamcorper fames eget enim diam fames faucibus duis ac. Aliquam non tellus semper in dignissim nascetur venenatis lacus.\n",
                                style: Styles.textStyleprivacy,
                              ),
                              TextSpan(
                                text:
                                    "\n Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque. Aliquam pharetra elementum nisl sapien. Erat nisl morbi eu dolor in. Sapien ut lacus dui libero morbi tristique \n",
                                style: Styles.textStyleprivacy,
                              ),
                              TextSpan(
                                text:
                                    " \n Sit praesent mi, dolor, magna in pellentesque sollicitudin odio sed. Sit nibh aliquam enim ipsum lectus sem fermentum congue velit. Purus habitant odio in morbi aliquet velit pulvinar. Facilisis ut amet interdum pretium. Fames pretium eget orci facilisis mattis est libero facilisis ullamcorper. Est auctor amet egestas risus libero et. Auctor faucibus sit id fringilla vitae. Ac volutpat sodales tristique ut netus turpis.Lorem ipsum dolor sit amet, consectetur ",
                                style: Styles.textStyleprivacy,
                              ),
                            ],
                          ),
                          // child: Text(
                          //   "\n Natoque phasellus lobortis mattis cursus faucibus hac proin risus. Turpis phasellus massa ullamcorper volutpat. Ornare commodo non integer fermentum nisi, morbi id. Vel tortor mauris feugiat amet, maecenas facilisis risus, in faucibus. Vestibulum ullamcorper fames eget enim diam fames faucibus duis ac. Aliquam non tellus semper in dignissim nascetur venenatis lacus. \n Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque. Aliquam pharetra elementum nisl sapien. Erat nisl morbi eu dolor in. Sapien ut lacus dui libero morbi tristique. \n Sit praesent mi, dolor, magna in pellentesque sollicitudin odio sed. Sit nibh aliquam enim ipsum lectus sem fermentum congue velit. Purus habitant odio in morbi aliquet velit pulvinar. Facilisis ut amet interdum pretium. Fames pretium eget orci facilisis mattis est libero facilisis ullamcorper. Est auctor amet egestas risus libero et. Auctor faucibus sit id fringilla vitae. Ac volutpat sodales tristique ut netus turpis.Lorem ipsum dolor sit amet, consectetur ",
                          //   style: Styles.textStyleprivacy,
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
