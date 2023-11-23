import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';

class CheckStatusController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //

  TabController? tabController;
  int tabIndex = 0;
  TextEditingController? textEditingController;

  final RxInt _check = 0.obs;

  int get check => _check.value;
  void setcheck(int v) => _check.value = v;

  List<String> tabs = [
    Constants.shareStatus,
    Constants.memStatus,
  ];

  final count = 0.obs;
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

  void increment() => count.value++;
}
