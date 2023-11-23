import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/app_tabar.dart';
import '../../../widgets/copy_right.dart';
import '../controllers/member_contribution_controller.dart';
import '../widgets/member_cheque_mode.dart';
import '../widgets/member_consent.dart';
import '../widgets/member_documents_details.dart';
import '../widgets/member_address.dart';
import '../widgets/member_details.dart';
import '../widgets/member_plan_details.dart';

class MemberContributionView extends GetView<MemberContributionController> {
  const MemberContributionView({Key? key}) : super(key: key);
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
                  MemberDetails(
                    controller: controller,
                  ),
                  MemberAddress(
                    controller: controller,
                  ),
                  MemberDocumentDetails(
                    controller: controller,
                  ),
                  MemberConsent(
                    controller: controller,
                  ),
                  MemberPlanDetails(
                    controller: controller,
                  ),
                  MemberChequeMode(
                    controller: controller,
                  ),
                ],
              ))),
          const Expanded(
            child: SizedBox(height: 80, child: CopyRight()),
          )
        ],
      ),
    );
  }
}
