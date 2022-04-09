import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_flutter_version/app/blocs/auth/auth.bloc.dart';

import '../controllers/dish_controller.dart';

class DishView extends GetView<DishController> {
  const DishView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DishView'),
        centerTitle: true,
      ),
      body: GetBuilder<DishController>(
        assignId: true,
        builder: (_) {
          return Center(
            child: Material(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                child: _.authBloc!.isSignedIn()
                    ? settings(_.authBloc)
                    : loginPage(_.authBloc),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget loginPage(AuthBloc? authBloc) {
    return Column(
      children: [
        const SizedBox(width: 10, height: 50),
        ElevatedButton(
            onPressed: () => Get.toNamed('/login'),
            child: const Text('Click here to go Login Page')),
      ],
    );
  }

  Widget settings(AuthBloc? authBloc) {
    return GetBuilder<DishController>(
      assignId: true,
      builder: (_) {
        return ListView(
          children: [
            Form(
                key: _.formKey,
                autovalidateMode: AutovalidateMode.always,
                onChanged: () =>
                _.btnEnabled.value = _.formKey.currentState!.validate(),
                child: Center(
                  child: Column(
                    children: const <Widget>[
                      Text("Update Dishes "),
                    ],
                  ),
                ))
          ],
        );
      },
    );
  }
}
