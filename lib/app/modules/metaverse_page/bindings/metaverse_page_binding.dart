import 'package:get/get.dart';

import '../controllers/metaverse_page_controller.dart';

class MetaversePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MetaversePageController>(
      () => MetaversePageController(),
    );
  }
}
