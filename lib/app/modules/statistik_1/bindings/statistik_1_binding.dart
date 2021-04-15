import 'package:get/get.dart';

import '../controllers/statistik_1_controller.dart';

class Statistik1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Statistik1Controller>(
      () => Statistik1Controller(),
    );
  }
}
