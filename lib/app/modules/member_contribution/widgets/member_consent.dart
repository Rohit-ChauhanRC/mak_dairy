import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';
import 'package:mak_dairy/app/modules/member_contribution/controllers/member_contribution_controller.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/check_box_widget.dart';
import '../../../widgets/check_form_field.dart';

class MemberConsent extends StatelessWidget {
  const MemberConsent({
    super.key,
    required this.controller,
  });
  final MemberContributionController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckBoxWidget(
          title: Constants.memConsentPara,
          onChanged: (val) {},
          value: true,
          onTap: () {},
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // width: 200,
              margin: const EdgeInsets.only(top: 20, left: 30),
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
              margin: const EdgeInsets.only(top: 20, left: 20),
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
    );
  }
}
