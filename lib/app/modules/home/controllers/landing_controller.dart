import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_ellys/app/modules/home/views/service_list_view.dart';

class LandingPageController extends GetxController {
  void goToProfilePage() {
    Get.to(() => ServiceList());
  }
}
