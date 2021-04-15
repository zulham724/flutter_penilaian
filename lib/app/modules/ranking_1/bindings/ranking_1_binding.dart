import 'package:get/get.dart';

import '../controllers/ranking_1_controller.dart';

class Ranking1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ranking1Controller>(
      () => Ranking1Controller(),
    );
  }
}
