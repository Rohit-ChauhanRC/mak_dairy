import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';

import '../../../widgets/app_button.dart';
import '../../../widgets/check_form_field.dart';
import '../controllers/share_registration_controller.dart';

class DocumentsDetails extends StatelessWidget {
  const DocumentsDetails({
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
          _listTile(
            Constants.photo,
            Icons.person_2_outlined,
          ),
          _listTile(
            Constants.cancelCheck,
            Icons.person_2_outlined,
          ),
          _listTile(
            Constants.panCard,
            Icons.person_2_outlined,
          ),
          _listTile(
            Constants.aadharCardFront,
            Icons.person_2_outlined,
          ),
          _listTile(
            Constants.aadharCardBack,
            Icons.person_2_outlined,
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          CheckboxFormField(
            title: Text(Constants.agreeTerms,
                style: TextStyle(
                  color: AppColors.purpleColor,
                  fontSize: AppDimens.font16,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text(
                Constants.shareAmount,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              const Text(
                "₹50/-",
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
              Container(
                width: 200,
                // margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: AppButton(
                  title: Constants.pay,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            width: 200,
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
        ],
      ),
    );
  }

  _listTile(String title, IconData? icon) {
    return ListTile(
      isThreeLine: true,
      dense: true,
      visualDensity: const VisualDensity(vertical: 4, horizontal: 4),
      minLeadingWidth: Get.width / 2,
      minVerticalPadding: 8,
      leading: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          height: 150,
          width: 150,
          child: Icon(
            icon,
            size: 50,
          ),
        ),
      ),
      title: Text(title),
      // titleTextStyle: const TextStyle(
      //   fontSize: AppDimens.font14,
      // ),
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
    );
  }
}
