import 'package:get/get.dart';

import '../controllers/rakit_soal_selesai_controller.dart';

class RakitSoalSelesaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RakitSoalSelesaiController>(
      () => RakitSoalSelesaiController(),
    );
  }
}
