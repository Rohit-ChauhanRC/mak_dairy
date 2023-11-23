import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:get/get.dart';

class UploadImageWidget extends StatelessWidget {
  final void Function()? onTap;
  final XFile imageFile;
  final double? width;
  final double? height;

  const UploadImageWidget({
    Key? key,
    required this.onTap,
    required this.imageFile,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.all(0),
        width: width ?? 100,
        height: height ?? 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2.0,
              color: Colors.black,
            )),
        // color: Colors.white,
        child: imageFile != null
            ? Image.file(
                File(imageFile.path),
                fit: BoxFit.cover,
              )
            : const Icon(
                Icons.add,
                size: 50,
              ),
      ),
    );
  }
}
