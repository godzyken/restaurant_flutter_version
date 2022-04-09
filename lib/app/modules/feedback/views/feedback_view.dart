import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FeedbackView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FeedbackView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
