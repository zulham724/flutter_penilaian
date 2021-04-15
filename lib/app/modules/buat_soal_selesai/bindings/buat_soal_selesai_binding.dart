import 'package:get/get.dart';

import '../controllers/buat_soal_selesai_controller.dart';

class BuatSoalSelesaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuatSoalSelesaiController>(
      () => BuatSoalSelesaiController(),
    );
  }
}
