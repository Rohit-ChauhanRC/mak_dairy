import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pay_partial_installment_controller.dart';

class PayPartialInstallmentView
    extends GetView<PayPartialInstallmentController> {
  const PayPartialInstallmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PayPartialInstallmentView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PayPartialInstallmentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
