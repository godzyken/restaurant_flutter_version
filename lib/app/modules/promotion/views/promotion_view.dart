import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/promotion_controller.dart';

class PromotionView extends GetView<PromotionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PromotionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PromotionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
