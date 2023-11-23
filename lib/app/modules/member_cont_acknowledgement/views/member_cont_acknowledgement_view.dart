import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/member_cont_acknowledgement_controller.dart';

class MemberContAcknowledgementView
    extends GetView<MemberContAcknowledgementController> {
  const MemberContAcknowledgementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MemberContAcknowledgementView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MemberContAcknowledgementView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
