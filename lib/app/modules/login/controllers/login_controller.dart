import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/datamodel.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  static const routeName = '/login';

  final count = 0.obs;
  final spinnerVisible = false.obs;
  final messageVisible = false.obs;
  final btnEnabled = false.obs;
  final messageTxt = 'messageTexte'.obs;
  final messageType = 'messageType'.obs;
  final formKey = GlobalKey<FormState>();
  final model = LoginDataModel();
  TextEditingController? emailC = TextEditingController();
  TextEditingController? passwordC = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    emailC?.dispose();
    passwordC?.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;

  showMessage(bool? msgVisible, msgType, message) {
    messageVisible.value = msgVisible!;
    // messageType.value = msgType == 'error'
    // ? print('error + $message')
    // : print('success + $message');
    messageTxt.value = message;
  }

  fetchData(AuthBloc? authBloc, String? loginType) async {
    var userAuth;
    if (loginType == "Google") {
      userAuth = await authBloc.signInWithGoogle();
    } else {
      userAuth = await authBloc.signInWithEmail(model);
    }

    if (userAuth == "") {
      showMessage(true, "success", "Login Successful");
    } else {
      showMessage(
          true,
          "error",
          (userAuth == 'user-not-found')
              ? "No user found for that email."
              : ((userAuth == 'wrong-password')
              ? "Wrong password provided for that user."
              : "An u-known error has occurred."));
    }
  }
}
