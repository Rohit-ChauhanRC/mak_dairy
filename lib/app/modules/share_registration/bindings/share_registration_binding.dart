import 'package:get/get.dart';

import '../controllers/share_registration_controller.dart';

class ShareRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShareRegistrationController>(
      () => ShareRegistrationController(),
    );
  }
}
