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
    this.height,
    this.width,
    this.fontSize,
  });

  final String title;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size(width ?? 130, height ?? 30),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize ?? AppDimens.font18,
        ),
      ),
    );
  }
}
