import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restaurant_flutter_version/app/blocs/auth/auth.bloc.dart';

class DishController extends GetxController {
  //TODO: Implement DishController

  final count = 0.obs;
  final routeName = '/dish/:id'.obs;
  AuthBloc? authBloc = AuthBloc();
  final formKey = GlobalKey<FormState>();
  final btnEnabled = false.obs;

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
