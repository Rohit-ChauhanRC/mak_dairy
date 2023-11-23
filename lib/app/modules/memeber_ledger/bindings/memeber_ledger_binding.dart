import 'package:get/get.dart';

import '../controllers/memeber_ledger_controller.dart';

class MemeberLedgerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemeberLedgerController>(
      () => MemeberLedgerController(),
    );
  }
}
