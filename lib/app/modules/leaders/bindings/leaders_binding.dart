import 'package:get/get.dart';

import '../controllers/leaders_controller.dart';

class LeadersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeadersController>(
          () => LeadersController(),
    );
  }
}
