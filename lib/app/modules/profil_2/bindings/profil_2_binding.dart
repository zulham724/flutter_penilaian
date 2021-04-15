import 'package:get/get.dart';

import '../controllers/profil_2_controller.dart';

class Profil2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Profil2Controller>(
      () => Profil2Controller(),
    );
  }
}
