import 'package:get/get.dart';

import '../controllers/buat_soal_buat_controller.dart';

class BuatSoalBuatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuatSoalBuatController>(
      () => BuatSoalBuatController(),
    );
  }
}
