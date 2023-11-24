import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/date_time_picker_widget.dart';
import '../../../widgets/text_form_widget.dart';

class MemberStatus extends StatelessWidget {
  const MemberStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                Constants.memId,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.memId,
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
                    Constants.dob,
                    style: TextStyle(
                      fontSize: AppDimens.font16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: AppDimens.font16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: DateTimePickerWidget(
                    onChanged: (val) {},
                    hintText: Constants.dob,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: AppButton(
              title: Constants.submit,
              onPressed: () {
                // controller.tabController!.index += 1;
              },
            ),
          ),
        ],
      ),
    );
  }
}
