import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';
import 'package:mak_dairy/app/modules/share_registration/controllers/share_registration_controller.dart';
import 'package:mak_dairy/app/widgets/date_time_picker_widget.dart';

import '../../../widgets/app_button.dart';
import '../../../widgets/text_form_dropdown.dart';
import '../../../widgets/text_form_widget.dart';
import '../../../widgets/drop_down_widget.dart';

class ShareDetails extends StatelessWidget {
  const ShareDetails({
    super.key,
    required this.controller,
  });

  final ShareRegistrationController controller;

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
              const Row(
                children: [
                  Text(
                    Constants.name,
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
                  child: TextFormDropDown(
                    label: Constants.name,
                    onChanged: (val) {},
                    items: Constants.titleList,
                    onChangedDrop: (val) {},
                    value: controller.inputValue,
                    hintDrop: "Mr.",
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
                Constants.gender,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: DropdownFormField(
                    // label: Constants.name,
                    onSaved: (val) {},
                    items: Constants.genderList
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
                    initialValue: controller.inputGender,
                    hintDrop: Constants.male.capitalizeFirst,
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
                  Constants.dob,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(children: [
                Text(
                  Constants.noShare,
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
                ),
              ]),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.minShare,
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
              const Text(
                Constants.shareAmount,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.minRs,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    Constants.mobNo,
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
                    label: Constants.mobNo,
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
              const Text(
                Constants.email,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.email,
                    onChanged: (v) {},
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
            ],
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
