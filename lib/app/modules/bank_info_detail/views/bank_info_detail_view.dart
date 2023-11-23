import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bank_info_detail_controller.dart';

class BankInfoDetailView extends GetView<BankInfoDetailController> {
  const BankInfoDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BankInfoDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BankInfoDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
