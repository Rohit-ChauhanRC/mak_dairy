import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_reg_mob_controller.dart';

class UpdateRegMobView extends GetView<UpdateRegMobController> {
  const UpdateRegMobView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateRegMobView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UpdateRegMobView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
