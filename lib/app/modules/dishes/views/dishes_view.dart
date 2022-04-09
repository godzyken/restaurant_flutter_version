import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dishes_controller.dart';

class DishesView extends GetView<DishesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DishesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DishesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
