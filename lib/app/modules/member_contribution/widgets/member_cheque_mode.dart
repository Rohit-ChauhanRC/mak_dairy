import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';
import 'package:mak_dairy/app/modules/member_contribution/controllers/member_contribution_controller.dart';
import 'package:mak_dairy/app/widgets/date_time_picker_widget.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/drop_down_widget.dart';
import '../../../widgets/text_form_widget.dart';
import '../../../widgets/upload_image_widget.dart';

class MemberChequeMode extends StatelessWidget {
  const MemberChequeMode({
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
          Obx(
            () => ListTile(
              isThreeLine: true,
              dense: true,
              visualDensity: const VisualDensity(vertical: 4, horizontal: 4),
              minLeadingWidth: Get.width / 2,
              minVerticalPadding: 8,
              leading: UploadImageWidget(
                imageFile: controller.chequeCopyPic,
                onTap: () {},
              ),
              title: const Text(Constants.chequeCopy),
              subtitle: SizedBox(
                width: 50,
                child: AppButton(
                  title: Constants.upload,
                  onPressed: () {},
                  width: 50,
                  height: 20,
                  fontSize: AppDimens.font14,
                ),
              ),
            ),
          ),
          //
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(children: [
                Text(
                  Constants.chequeDate,
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
                )
              ]),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 1.7,
                  height: 30,
                  child: DateTimePickerWidget(
                    onChanged: (val) {},
                    hintText: Constants.chequeDate,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

//

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width / 3,
                child: const Text(
                  Constants.chequeAmt,
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
                    label: Constants.chequeAmt,
                    onChanged: (v) {},
                    keyboardType: TextInputType.number,
                    // readOnly: true,
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
              SizedBox(
                width: Get.width / 3,
                child: const Text(
                  Constants.chequeNo,
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
                    label: Constants.chequeAmt,
                    onChanged: (v) {},
                    keyboardType: TextInputType.text,
                    // readOnly: true,
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
                    Constants.bankName,
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
