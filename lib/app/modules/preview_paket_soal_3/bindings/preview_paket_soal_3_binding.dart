import 'package:get/get.dart';

import '../controllers/preview_paket_soal_3_controller.dart';

class PreviewPaketSoal3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewPaketSoal3Controller>(
      () => PreviewPaketSoal3Controller(),
    );
  }
}
