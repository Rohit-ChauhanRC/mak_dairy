import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/memeber_ledger_controller.dart';

class MemeberLedgerView extends GetView<MemeberLedgerController> {
  const MemeberLedgerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MemeberLedgerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MemeberLedgerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
