import 'package:get/get.dart';

import '../controllers/bottom_navi_controller.dart';

class BottomNaviBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNaviController>(
      () => BottomNaviController(),
    );
  }
}
