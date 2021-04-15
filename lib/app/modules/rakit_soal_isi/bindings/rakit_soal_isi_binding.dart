import 'package:get/get.dart';

import '../controllers/rakit_soal_isi_controller.dart';

class RakitSoalIsiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RakitSoalIsiController>(
      () => RakitSoalIsiController(),
    );
  }
}
