// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:get/get.dart';
// import 'package:ycom/models/report.dart';

// abstract class SettingController extends GetxController{
//
//   onChanged();
//
// }
//
// class RadioButtomController extends GetxController{
//   String _orderType = "Metric";
//   String get orderType => _orderType;
//
//   @override
//   void setOrderTpe(String type) {
//     _orderType = type;
//     update();
//
//
//   }
//
//
// }

class RadioController1 extends GetxController {
  String? orderType;
  //bool? checked;
  // var isSelected =true;

  setOrderType(String type) {
    orderType = type;
    update();
  }
}

class NotificationsController extends GetxController {
  bool state = false;
  onChanged(index) {
    state = index;
    update();
  }
}

// class ReportController extends GetxController {
//   var report = Report().obs;
//   List<String> period = ["evening", "morning"];

//   void set selectedPeriod(String selectedPeriod) {
//     report.update((report) {
//       report.selectedPeriod = selectedPeriod;
//     });
//   }

//   String get selectedPeriod => report.value.selectedPeriod;
// }

// class ButtonController extends GetxController {
//   String _orderType = 'home_delivery';
//   String get orderType => _orderType;
//   void setOrderType(String type) {
//     _orderType = type;
//     print("The order type is " + _orderType);
//     update();
//   }
// }

class RadioController extends GetxController {
  var selectorderType = "".obs;

  onChangeRadio(var unites) {
    selectorderType.value = unites;
  }
}
