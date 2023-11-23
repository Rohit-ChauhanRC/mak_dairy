import 'package:get/get.dart';

import '../controllers/share_acknowledgement_controller.dart';

class ShareAcknowledgementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShareAcknowledgementController>(
      () => ShareAcknowledgementController(),
    );
  }
}
