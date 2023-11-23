import 'package:get/get.dart';

import '../controllers/memeber_receipt_controller.dart';

class MemeberReceiptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemeberReceiptController>(
      () => MemeberReceiptController(),
    );
  }
}
