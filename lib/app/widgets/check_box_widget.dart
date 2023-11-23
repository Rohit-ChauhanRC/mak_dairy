import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/constants.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_dimens.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    super.key,
    this.onChanged,
    this.value,
    required this.title,
    this.onTap,
    this.crossAxisAlignment,
  });
  final void Function(bool?)? onChanged;
  final bool? value;
  final String title;
  final void Function()? onTap;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: [
          Checkbox(
            onChanged: onChanged,
            value: value,
            activeColor: AppColors.green,
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: Get.width * 0.8,
              child: Text(title,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    // color: AppColors.purpleColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
