import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/modules/member_contribution/controllers/member_contribution_controller.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/drop_down_widget.dart';
import '../../../widgets/text_form_dropdown.dart';
import '../../../widgets/text_form_widget.dart';

class MemberDocumentDetails extends StatelessWidget {
  const MemberDocumentDetails({
    super.key,
    required this.controller,
  });

  final MemberContributionController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                Constants.bankAC,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              // const SizedBox(
              //   width: 20,
              // ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.bankAC,
                    onChanged: (v) {},
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(children: [
                Text(
                  Constants.bankName,
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                  ),
                ),
                Text(
                  "*",
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.red,
                  ),
                )
              ]),
              // const SizedBox(
              //   width: 35,
              // ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.bankName,
                    onChanged: (v) {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    Constants.ifscCode,
                    style: TextStyle(
                      fontSize: AppDimens.font16,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: AppDimens.font16,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.ifscCode,
                    onChanged: (v) {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    Constants.branchName,
                    style: TextStyle(
                      fontSize: AppDimens.font16,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: AppDimens.font16,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.branchName,
                    onChanged: (v) {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                Constants.panNum,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.panNum,
                    onChanged: (v) {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                Constants.aadharNum,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.aadharNum,
                    onChanged: (v) {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // width: 200,
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: AppButton(
                  title: Constants.back,
                  backgroundColor: AppColors.red,
                  onPressed: () {
                    controller.tabController!.index -= 1;
                  },
                ),
              ),
              Container(
                width: 200,
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: AppButton(
                  title: Constants.next,
                  onPressed: () {
                    controller.tabController!.index += 1;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
