import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../login/views/login_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.deepOrangeAccent,
          iconSize: 28.0,
          onPressed: () => Get.toNamed('/about'),
        ),
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: LoginView(),
          )
        ],
      ),
    );
  }
}
