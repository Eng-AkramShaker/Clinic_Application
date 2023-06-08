// ignore_for_file: prefer_const_constructors, unused_import

import 'package:carehealth/View/Pages/Trainer/paymentCompleted.dart';
import 'package:carehealth/View/Pages/home_page/HomePage.dart';
import 'package:carehealth/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'View/Pages/Trainer/addNew.dart';
import 'View/Pages/home_page/Favourite.dart';
import 'View/Pages/home_page/speed_Dial.dart';
import 'View/Pages/home_page/Book_Now.dart';
import 'View/Pages/informations/center_information.dart';
import 'View/Pages/profile/profile.dart';
import 'View/Pages/review/appSettingPage.dart';
import 'View/Pages/review/trainerDetailPage.dart';
import 'constatnt/color_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, child!),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          breakpointsLandscape: [
            const ResponsiveBreakpoint.resize(560, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(812, name: MOBILE),
            const ResponsiveBreakpoint.resize(1024, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1120, name: TABLET),
          ],
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Clinic_app',
      //

      getPages: AppPage.routes,
      initialRoute: AppPage.getBoarding_Start(),
    );
  }
}
