import 'package:get/get.dart';

import '../controllers/statistik_2_controller.dart';

class Statistik2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Statistik2Controller>(
      () => Statistik2Controller(),
    );
  }
}
