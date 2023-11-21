import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_dimens.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/date_time_picker_widget.dart';
import '../../../widgets/drop_down_widget.dart';
import '../../../widgets/text_form_widget.dart';
import '../controllers/share_registration_controller.dart';

class FamilyDetails extends StatelessWidget {
  const FamilyDetails({
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
            children: [
              const Text(
                Constants.fHName,
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
                    label: Constants.fHName,
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
            children: [
              const Text(
                Constants.rel,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              const SizedBox(
                width: 75,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 2,
                  height: 30,
                  child: DropdownFormField(
                    // label: Constants.name,
                    onSaved: (val) {},
                    items: controller.rel
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        // onTap: fn1,
                        value: value,
                        child: Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xff2d1f76),
                              ),
                            )),
                      );
                    }).toList(),
                    initialValue: controller.inputRel,
                    hintDrop: Constants.rel,
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
                Constants.motherName,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 2,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.motherName,
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
            children: [
              const Text(
                Constants.nomName,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 2,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.nomName,
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
            children: [
              const Text(
                Constants.nomDob,
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
                  child: DateTimePickerWidget(
                    onChanged: (val) {},
                    hintText: Constants.nomDob,
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
                Constants.nomRel,
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
                width: 65,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 2,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.nomRel,
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
                Constants.nomContact,
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
                    label: Constants.nomContact,
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
            children: [
              const Text(
                Constants.nomAddress,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: Get.width / 2,
                  height: 30,
                  child: TextFormWidget(
                    label: Constants.email,
                    onChanged: (v) {},
                    keyboardType: TextInputType.text,
                    readOnly: true,
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
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
