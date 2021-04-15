import 'package:get/get.dart';

import '../controllers/soal_terkait_error_controller.dart';

class SoalTerkaitErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SoalTerkaitErrorController>(
      () => SoalTerkaitErrorController(),
    );
  }
}
