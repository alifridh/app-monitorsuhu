import 'package:get/get.dart';

import '../controllers/livingroom_controller.dart';

class LivingroomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LivingroomController>(
      () => LivingroomController(),
    );
  }
}
