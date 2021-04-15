import 'package:get/get.dart';

import '../controllers/paket_soal_controller.dart';

class PaketSoalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaketSoalController>(
      () => PaketSoalController(),
    );
  }
}
