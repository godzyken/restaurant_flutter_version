import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/promotions_controller.dart';

class PromotionsView extends GetView<PromotionsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PromotionsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PromotionsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
