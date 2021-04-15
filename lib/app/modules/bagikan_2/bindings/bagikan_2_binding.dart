import 'package:get/get.dart';

import '../controllers/bagikan_2_controller.dart';

class Bagikan2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Bagikan2Controller>(
      () => Bagikan2Controller(),
    );
  }
}
