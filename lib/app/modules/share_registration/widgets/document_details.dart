import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';
import 'package:mak_dairy/app/core/utils/app_enum.dart';
import 'package:mak_dairy/app/core/utils/utils.dart';

import '../../../widgets/app_button.dart';
import '../../../widgets/check_box_widget.dart';
import '../../../widgets/check_form_field.dart';
import '../../../widgets/listtile_upload_img.dart';
import '../../../widgets/upload_image_widget.dart';
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
          _listTile(Constants.photo, Icons.person_2_outlined,
              docType: DocType.personPhoto, onTap: () async {
            controller.getImage1(
              imageType: DocType.personPhoto,
            );
          }),
          _listTile(Constants.cancelCheck, Icons.person_2_outlined,
              docType: DocType.cancelCheck, onTap: () async {
            controller.getImage1(
              imageType: DocType.cancelCheck,
            );
          }),
          _listTile(Constants.aadharCardFront, Icons.person_2_outlined,
              docType: DocType.aadharCardFront, onTap: () async {
            controller.getImage1(
              imageType: DocType.aadharCardFront,
            );
          }),
          _listTile(Constants.aadharCardBack, Icons.person_2_outlined,
              docType: DocType.aadharCardBack, onTap: () async {
            controller.getImage1(
              imageType: DocType.aadharCardBack,
            );
          }),
          _listTile(Constants.panCard, Icons.person_2_outlined,
              docType: DocType.panCard, onTap: () async {
            controller.getImage1(
              imageType: DocType.panCard,
            );
          }),
          // CheckboxFormField(
          //   title: Text(Constants.agreeTerms,
          //       style: TextStyle(
          //         color: AppColors.purpleColor,
          //         fontSize: AppDimens.font16,
          //       )),
          // ),
          CheckBoxWidget(
            title: Constants.agreeTerms,
            onChanged: (val) {},
            value: true,
            onTap: () {},
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

  _listTile(String title, IconData? icon,
      {required DocType docType, void Function()? onTap}) {
    return Obx(() => ListTile(
          isThreeLine: true,
          dense: true,
          visualDensity: const VisualDensity(vertical: 4, horizontal: 4),
          minLeadingWidth: Get.width / 2,
          minVerticalPadding: 8,
          leading: UploadImageWidget(
            imageFile: docType == DocType.personPhoto
                ? controller.personPic
                : docType == DocType.aadharCardFront
                    ? controller.aadharCardFrontPic
                    : docType == DocType.aadharCardBack
                        ? controller.aadharCardBackPic
                        : docType == DocType.panCard
                            ? controller.panCardPic
                            : controller.cancelCheckPic,
            onTap: onTap,
          ),
          // InkWell(
          //   onTap: onTap,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       border: Border.all(
          //         color: Colors.black,
          //         width: 2.0,
          //       ),
          //     ),
          //     height: 150,
          //     width: 150,
          //     child: Obx(
          //       () => img != null
          //           ? Image.file(File(img.path))
          //           : Icon(
          //               icon,
          //               size: 50,
          //             ),
          //     ),
          //   ),
          // ),

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
        ));
  }
}
