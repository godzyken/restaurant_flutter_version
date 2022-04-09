import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dish_controller.dart';

class DishView extends GetView<DishController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DishView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DishView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
