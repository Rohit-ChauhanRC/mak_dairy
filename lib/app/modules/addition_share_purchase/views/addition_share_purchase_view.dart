import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/addition_share_purchase_controller.dart';

class AdditionSharePurchaseView
    extends GetView<AdditionSharePurchaseController> {
  const AdditionSharePurchaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdditionSharePurchaseView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AdditionSharePurchaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
