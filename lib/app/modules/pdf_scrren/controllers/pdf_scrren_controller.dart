import 'package:get/get.dart';

class PdfScrrenController extends GetxController {
  //

  final RxString _filePath = "".obs;
  String get filePath => _filePath.value;
  set filePath(String str) => _filePath.value = str;
  @override
  void onInit() {
    super.onInit();
    _filePath.value = Get.arguments;
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
