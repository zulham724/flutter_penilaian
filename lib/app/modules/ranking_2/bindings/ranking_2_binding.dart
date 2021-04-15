import 'package:get/get.dart';

import '../controllers/ranking_2_controller.dart';

class Ranking2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ranking2Controller>(
      () => Ranking2Controller(),
    );
  }
}
