import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/leaders_controller.dart';

class LeadersView extends GetView<LeadersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LeadersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LeadersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
