import 'package:get/get.dart';

import '../controllers/preview_paket_soal_controller.dart';

class PreviewPaketSoalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewPaketSoalController>(
      () => PreviewPaketSoalController(),
    );
  }
}
