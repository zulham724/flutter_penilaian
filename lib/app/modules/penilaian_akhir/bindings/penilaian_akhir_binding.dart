import 'package:get/get.dart';

import '../controllers/penilaian_akhir_controller.dart';

class PenilaianAkhirBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PenilaianAkhirController>(
      () => PenilaianAkhirController(),
    );
  }
}
