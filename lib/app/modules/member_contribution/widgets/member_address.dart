import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';
import 'package:mak_dairy/app/modules/member_contribution/controllers/member_contribution_controller.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/check_form_field.dart';
import '../../../widgets/text_form_widget.dart';

class MemberAddress extends StatelessWidget {
  const MemberAddress({
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
          const Text(
            Constants.permAdd,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppDimens.font16,
              color: AppColors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildAddress(),
          const SizedBox(
            height: 20,
          ),
          CheckboxFormField(
            title: const Text(Constants.sameAsPermAdd,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                )),
          ),
          const Text(
            Constants.corrAdd,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppDimens.font16,
              color: AppColors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildAddress(),
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

  _buildAddress() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              Constants.hNo,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 1.7,
                height: 30,
                child: TextFormWidget(
                  label: Constants.hNo,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
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
              Constants.sector,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 1.7,
                height: 30,
                child: TextFormWidget(
                  label: Constants.sector,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
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
              Constants.stNo,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 1.7,
                height: 30,
                child: TextFormWidget(
                  label: Constants.stNo,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
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
              Constants.villColony,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 1.7,
                height: 30,
                child: TextFormWidget(
                  label: Constants.villColony,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
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
              Constants.poCity,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 1.7,
                height: 30,
                child: TextFormWidget(
                  label: Constants.poCity,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
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
                  Constants.district,
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
                  label: Constants.district,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
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
                  Constants.state,
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
                  label: Constants.state,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
