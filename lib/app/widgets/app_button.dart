import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
  });

  final String title;
  final void Function()? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // color: AppColors.white,
        // minimumSize: const Size(100, 40),
        fixedSize: const Size(120, 34),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: AppDimens.font16,
        ),
      ),
    );
  }
}
