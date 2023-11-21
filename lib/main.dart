import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
