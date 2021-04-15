import 'package:get/get.dart';

import '../controllers/buat_soal_isi_controller.dart';

class BuatSoalIsiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuatSoalIsiController>(
      () => BuatSoalIsiController(),
    );
  }
}
