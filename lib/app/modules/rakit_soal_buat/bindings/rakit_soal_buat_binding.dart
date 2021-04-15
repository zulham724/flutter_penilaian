import 'package:get/get.dart';

import '../controllers/rakit_soal_buat_controller.dart';

class RakitSoalBuatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RakitSoalBuatController>(
      () => RakitSoalBuatController(),
    );
  }
}
