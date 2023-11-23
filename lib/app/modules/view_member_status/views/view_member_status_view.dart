import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_member_status_controller.dart';

class ViewMemberStatusView extends GetView<ViewMemberStatusController> {
  const ViewMemberStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewMemberStatusView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ViewMemberStatusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
