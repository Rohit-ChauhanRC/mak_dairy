import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/share_acknowledgement_controller.dart';

class ShareAcknowledgementView extends GetView<ShareAcknowledgementController> {
  const ShareAcknowledgementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShareAcknowledgementView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ShareAcknowledgementView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
