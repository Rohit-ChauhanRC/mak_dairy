import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/constants/constants.dart';

class MemberContributionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //

  TabController? tabController;
  int tabIndex = 0;
  TextEditingController? textEditingController;

  final RxInt _check = 0.obs;

  int get check => _check.value;
  void setcheck(int v) => _check.value = v;

  List<String> tabs = [
    Constants.memDetails,
    Constants.addDetails,
    Constants.docDetail,
    Constants.memConsent,
    Constants.planDetails,
    Constants.cheqMaster,
  ];

  String? inputValue = "Mr.";
  String? inputGender = "Male";
  String? inputRel = "Father";
  String? inputEdu = "10th Pass";
  String? inputLoc = "Surat";
  String? inputContriYear = "3 Year 0 Month";
  String? inputunit = "1";

  final Rx<XFile> _chequeCopyPic = Rx<XFile>(XFile(''));
  XFile get chequeCopyPic => _chequeCopyPic.value;
  set chequeCopyPic(XFile v) => _chequeCopyPic.value = v;

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
