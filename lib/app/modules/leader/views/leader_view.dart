import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/leader_controller.dart';

class LeaderView extends GetView<LeaderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LeaderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LeaderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
