import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class UpdateRegMobController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //
  TabController? tabController;
  int tabIndex = 0;
  TextEditingController? textEditingController;

  final RxInt _check = 0.obs;

  int get check => _check.value;
  void setcheck(int v) => _check.value = v;

  List<String> tabs = [
    Constants.share,
    Constants.member,
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(
      length: tabs.length,
      initialIndex: tabIndex,
      vsync: this,
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
