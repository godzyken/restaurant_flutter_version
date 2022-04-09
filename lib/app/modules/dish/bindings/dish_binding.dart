import 'package:get/get.dart';

import '../controllers/dish_controller.dart';

class DishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DishController>(
          () => DishController(),
    );
  }
}
