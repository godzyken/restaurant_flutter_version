import 'package:get/get.dart';

import '../controllers/dishes_controller.dart';

class DishesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DishesController>(
          () => DishesController(),
    );
  }
}
