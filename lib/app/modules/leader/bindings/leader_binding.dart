import 'package:get/get.dart';

import '../controllers/leader_controller.dart';

class LeaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeaderController>(
          () => LeaderController(),
    );
  }
}
