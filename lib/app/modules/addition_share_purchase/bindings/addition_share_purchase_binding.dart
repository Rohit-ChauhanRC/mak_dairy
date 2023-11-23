import 'package:get/get.dart';

import '../controllers/addition_share_purchase_controller.dart';

class AdditionSharePurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdditionSharePurchaseController>(
      () => AdditionSharePurchaseController(),
    );
  }
}
