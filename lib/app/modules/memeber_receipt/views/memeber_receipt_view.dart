import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/memeber_receipt_controller.dart';

class MemeberReceiptView extends GetView<MemeberReceiptController> {
  const MemeberReceiptView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MemeberReceiptView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MemeberReceiptView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
