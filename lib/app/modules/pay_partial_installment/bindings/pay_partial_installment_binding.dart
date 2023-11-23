import 'package:get/get.dart';

import '../controllers/pay_partial_installment_controller.dart';

class PayPartialInstallmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayPartialInstallmentController>(
      () => PayPartialInstallmentController(),
    );
  }
}
