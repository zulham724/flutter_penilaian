import 'package:get/get.dart';

import '../controllers/butir_soal_controller.dart';

class ButirSoalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButirSoalController>(
      () => ButirSoalController(),
    );
  }
}
