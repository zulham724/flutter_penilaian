import 'package:get/get.dart';

import '../controllers/bagikan_controller.dart';

class BagikanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BagikanController>(
      () => BagikanController(),
    );
  }
}
