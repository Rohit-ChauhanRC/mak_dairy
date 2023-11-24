import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/date_time_picker_widget.dart';
import '../../../widgets/text_form_widget.dart';

class AddShareWidget extends StatelessWidget {
  const AddShareWidget({super.key});

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
                Constants.shareId,
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
                    label: Constants.shareId,
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
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: AppButton(
              backgroundColor: AppColors.purpleColor,
              title: Constants.view,
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
