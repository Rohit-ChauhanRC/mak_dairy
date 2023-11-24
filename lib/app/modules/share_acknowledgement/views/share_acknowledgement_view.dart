import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/app_tabar.dart';
import '../../../widgets/copy_right.dart';
import '../controllers/share_acknowledgement_controller.dart';
import '../widgets/share_acknowledgement_table.dart';

class ShareAcknowledgementView extends GetView<ShareAcknowledgementController> {
  const ShareAcknowledgementView({Key? key}) : super(key: key);
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
              Constants.shareAck,
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
            child: const SingleChildScrollView(
              child: ShareAcknoweldgementTable(),
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
