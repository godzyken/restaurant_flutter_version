import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  static const routeName = '/home';

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
