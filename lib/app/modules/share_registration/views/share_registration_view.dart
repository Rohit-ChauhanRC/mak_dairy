import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mak_dairy/app/widgets/app_bar_widget.dart';
import 'package:mak_dairy/app/widgets/app_tabar.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/copy_right.dart';
import '../controllers/share_registration_controller.dart';
import '../widgets/document_details.dart';
import '../widgets/family_details.dart';
import '../widgets/other_details.dart';
import '../widgets/share_address.dart';
import '../widgets/share_details.dart';

class ShareRegistrationView extends GetView<ShareRegistrationController> {
  const ShareRegistrationView({Key? key}) : super(key: key);
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
            child: Text(
              Constants.memShareReg,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.purple[900],
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            child: Text(
              Constants.queryContact,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: Get.height * 0.72,
              width: Get.width,
              child: Center(
                  child: AppTabBar(
                tabs: controller.tabs,
                controller: controller.tabController,
                tabChildren: [
                  // New Orders
                  ShareDetails(
                    controller: controller,
                  ),
                  // Shipped Orders
                  ShareAddress(
                    controller: controller,
                  ),
                  FamilyDetails(
                    controller: controller,
                  ),
                  OtherDetails(
                    controller: controller,
                  ),
                  DocumentsDetails(
                    controller: controller,
                  ),
                ],
              ))),
          // const Expanded(child: CopyRight())
          const Expanded(
            child: SizedBox(height: 80, child: CopyRight()),
          ),
        ],
      ),
    );
  }
}
