import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/copy_right.dart';
import '../controllers/view_member_status_controller.dart';
import '../widgets/member_status.dart';

class ViewMemberStatusView extends GetView<ViewMemberStatusController> {
  const ViewMemberStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet: const SizedBox(height: 80, child: CopyRight()),
      appBar: AppBar(
        actions: [],
        title: SizedBox(
          width: Get.width - 20,
          child: Text(
            Constants.appbarTitle.toUpperCase().toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            overflow: TextOverflow.visible,
          ),
        ),
        backgroundColor: Colors.purple[900],
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: Get.width,
            child: Image.asset(
              "assets/images/member_status.png",
              // fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            child: Text(
              Constants.queryContact,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: Get.height * 0.7,
            width: Get.width,
            child: const SingleChildScrollView(
              child: MemberStatus(),
            ),
          ),
          const Expanded(
            child: SizedBox(height: 80, child: CopyRight()),
          )
        ],
      ),
    );
  }
}
