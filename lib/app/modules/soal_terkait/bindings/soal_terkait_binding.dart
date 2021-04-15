import 'package:get/get.dart';

import '../controllers/soal_terkait_controller.dart';

class SoalTerkaitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SoalTerkaitController>(
      () => SoalTerkaitController(),
    );
  }
}
