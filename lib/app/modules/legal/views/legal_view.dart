import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/legal_controller.dart';

class LegalView extends GetView<LegalController> {
  const LegalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LegalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LegalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
