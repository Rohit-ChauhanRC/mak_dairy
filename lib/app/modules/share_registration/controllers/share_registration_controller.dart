import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';

class ShareRegistrationController extends GetxController
    with SingleGetTickerProviderMixin {
  //

  TabController? tabController;
  int tabIndex = 0;
  TextEditingController? textEditingController;

  final RxInt _check = 0.obs;

  int get check => _check.value;
  void setcheck(int v) => _check.value = v;

  List<String> tabs = [
    Constants.shareDetail,
    Constants.shareAdd,
    Constants.familyDetail,
    Constants.otherDetail,
    Constants.docDetail,
  ];

  String? inputValue = "Mr.";
  String? inputGender = "Male";
  String? inputRel = "Father";

  List<String> items = ["Mr.", "Ms.", "Mrs.", "Dr."];

  final List<String> gender = [
    Constants.male,
    Constants.female,
    Constants.other,
  ];

  final List<String> rel = [
    Constants.father,
    Constants.mother,
    Constants.other,
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

  _handleTabSelection() {
    if (tabController!.indexIsChanging) {
      tabIndex = tabController!.index;
      _check.value = tabController!.index;
      // update();
    }
  }
}
