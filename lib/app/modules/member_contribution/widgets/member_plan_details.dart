import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/check_box_widget.dart';
import '../../../widgets/check_form_field.dart';
import '../../../widgets/drop_down_widget.dart';
import '../../../widgets/text_form_widget.dart';
import '../controllers/member_contribution_controller.dart';

class MemberPlanDetails extends StatelessWidget {
  const MemberPlanDetails({
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
          Container(
            decoration: BoxDecoration(
              color: AppColors.purpleColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              Constants.partial,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppDimens.font18,
                color: AppColors.white,
              ),
            ),
          ),

          // Cy
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    Constants.contributionYear,
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
                  child: DropdownFormField(
                    // label: Constants.name,
                    onSaved: (val) {},
                    items: Constants.contributionYearList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        // onTap: fn1,
                        value: value,
                        child: Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              value.capitalizeFirst.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xff2d1f76),
                              ),
                            )),
                      );
                    }).toList(),
                    initialValue: controller.inputContriYear,
                    hintDrop: Constants.contributionYear.capitalizeFirst,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Constants.contributionAmount,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹39600/-",
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Constants.contributionTerm,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: Get.width * 0.55,
                child: const Text(
                  Constants.contrAmtPara,
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

//
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    Constants.unit,
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
                  child: DropdownFormField(
                    // label: Constants.name,
                    onSaved: (val) {},
                    items: Constants.unitList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        // onTap: fn1,
                        value: value,
                        child: Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              value.capitalizeFirst.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xff2d1f76),
                              ),
                            )),
                      );
                    }).toList(),
                    initialValue: controller.inputContriYear,
                    hintDrop: Constants.unit.capitalizeFirst,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //
          // MOB
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width / 3,
                child: const Text(
                  Constants.contributionAmount,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.contributionAmount,
                    onChanged: (v) {},
                    keyboardType: TextInputType.number,
                    readOnly: true,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: Get.width / 3,
            child: const Text(
              Constants.selectPlan,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: AppDimens.font16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            // height: 200,
            // child: ListView.builder(
            //     itemCount: Constants.planList.length,
            //     itemBuilder: (context, index) {
            //       String title = Constants.planList[index];
            //       return CheckboxFormField(
            //         title: Text(title),
            //       );
            //     }),
            child: Column(
              children: [
                for (int i = 0; i < Constants.planList.length; i++)
                  CheckboxFormField(
                    title: Text(Constants.planList[i]),
                  )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width / 3,
                child: const Text(
                  Constants.contributionAmount,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.contributionAmount,
                    onChanged: (v) {},
                    keyboardType: TextInputType.number,
                    readOnly: true,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            Constants.ourContrMode,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontSize: AppDimens.font16,
              fontWeight: FontWeight.bold,
            ),
          ),

          CheckBoxWidget(
            title: Constants.agreeTerms,
            onChanged: (val) {},
            value: true,
            onTap: () {},
            // crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
