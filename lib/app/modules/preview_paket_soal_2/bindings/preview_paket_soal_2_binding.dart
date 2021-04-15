import 'package:get/get.dart';

import '../controllers/preview_paket_soal_2_controller.dart';

class PreviewPaketSoal2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewPaketSoal2Controller>(
      () => PreviewPaketSoal2Controller(),
    );
  }
}
