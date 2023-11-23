import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../core/constants/constants.dart';
import '../core/utils/app_dimens.dart';
import 'app_button.dart';
import 'upload_image_widget.dart';

class ListTileUploadImg extends StatelessWidget {
  const ListTileUploadImg({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
    required this.image,
  });

  final String title;
  final IconData? icon;
  final void Function()? onTap;
  final XFile image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      dense: true,
      visualDensity: const VisualDensity(vertical: 4, horizontal: 4),
      minLeadingWidth: Get.width / 2,
      minVerticalPadding: 8,
      leading: Obx(() => UploadImageWidget(
            imageFile: image,
            onTap: onTap,
          )),
      title: Text(title),
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
