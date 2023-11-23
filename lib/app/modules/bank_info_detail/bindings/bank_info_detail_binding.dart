import 'package:get/get.dart';

import '../controllers/bank_info_detail_controller.dart';

class BankInfoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BankInfoDetailController>(
      () => BankInfoDetailController(),
    );
  }
}
