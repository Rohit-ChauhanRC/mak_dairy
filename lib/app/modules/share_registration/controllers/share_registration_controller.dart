import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';

import '../../../core/utils/app_enum.dart';
import '../../../core/utils/utils.dart';

class ShareRegistrationController extends GetxController
    with GetSingleTickerProviderStateMixin {
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
  String? inputEdu = "10th Pass";

  final Rx<XFile> _personPic = Rx<XFile>(XFile(''));
  XFile get personPic => _personPic.value;
  set personPic(XFile v) => _personPic.value = v;

  final Rx<XFile> _cancelCheckPic = Rx<XFile>(XFile(''));
  XFile get cancelCheckPic => _cancelCheckPic.value;
  set cancelCheckPic(XFile v) => _cancelCheckPic.value = v;

  final Rx<XFile> _aadharCardFrontPic = Rx<XFile>(XFile(''));
  XFile get aadharCardFrontPic => _aadharCardFrontPic.value;
  set aadharCardFrontPic(XFile v) => _aadharCardFrontPic.value = v;

  final Rx<XFile> _aadharCardBackPic = Rx<XFile>(XFile(''));
  XFile get aadharCardBackPic => _aadharCardBackPic.value;
  set aadharCardBackPic(XFile v) => _aadharCardBackPic.value = v;

  final Rx<XFile> _panCardPic = Rx<XFile>(XFile(''));
  XFile get panCardPic => _panCardPic.value;
  set panCardPic(XFile v) => _panCardPic.value = v;

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

  void getImage1({
    required DocType imageType,
  }) {
    Utils.showImagePicker(
      onGetImage: (image) {
        if (image != null) {
          switch (imageType) {
            case DocType.personPhoto:
              personPic = image;
              break;
            case DocType.cancelCheck:
              // gstCertificate.text = 'gst_image.jpg';
              cancelCheckPic = image;
              break;
            case DocType.panCard:
              // panCard.text = 'pan_card.jpg';
              panCardPic = image;

              break;

            case DocType.aadharCardFront:
              aadharCardFrontPic = image;

              break;
            case DocType.aadharCardBack:
              aadharCardBackPic = image;

              break;
          }
          if (kDebugMode) printInfo(info: image.path);
        }
      },
    );
  }
}
