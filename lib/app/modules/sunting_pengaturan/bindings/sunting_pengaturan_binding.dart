import 'package:get/get.dart';

import '../controllers/sunting_pengaturan_controller.dart';

class SuntingPengaturanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuntingPengaturanController>(
      () => SuntingPengaturanController(),
    );
  }
}
