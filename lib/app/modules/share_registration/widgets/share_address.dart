import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/check_form_field.dart';
import '../../../widgets/text_form_widget.dart';

class ShareAddress extends StatelessWidget {
  const ShareAddress({super.key});

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
              fontSize: AppDimens.font18,
              color: AppColors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildAddress(),
          const SizedBox(
            height: 20,
          ),
          CheckboxFormField(
            title: const Text(Constants.sameAsPermAdd),
          ),
          const Text(
            Constants.corrAdd,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppDimens.font18,
              color: AppColors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildAddress(),
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: AppButton(
              title: Constants.next,
              onPressed: () {},
            ),
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
          children: [
            const Text(
              Constants.hNo,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            const SizedBox(
              width: 70,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 2,
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
          children: [
            const Text(
              Constants.sector,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 2,
                height: 30,
                child: TextFormWidget(
                  label: Constants.sector,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
                  readOnly: true,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Text(
              Constants.villColony,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 2,
                height: 30,
                child: TextFormWidget(
                  label: Constants.villColony,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
                  readOnly: true,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Text(
              Constants.poCity,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            const SizedBox(
              width: 60,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 2,
                height: 30,
                child: TextFormWidget(
                  label: Constants.poCity,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
                  readOnly: true,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Text(
              Constants.district,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            const Text(
              "*",
              style: TextStyle(
                fontSize: AppDimens.font16,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              width: 55,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 2,
                height: 30,
                child: TextFormWidget(
                  label: Constants.district,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
                  readOnly: true,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Text(
              Constants.state,
              style: TextStyle(
                fontSize: AppDimens.font16,
              ),
            ),
            const Text(
              "*",
              style: TextStyle(
                fontSize: AppDimens.font16,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              width: 70,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: Get.width / 2,
                height: 30,
                child: TextFormWidget(
                  label: Constants.state,
                  onChanged: (v) {},
                  keyboardType: TextInputType.text,
                  readOnly: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
