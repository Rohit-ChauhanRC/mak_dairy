import 'package:get/get.dart';

import '../controllers/member_cont_acknowledgement_controller.dart';

class MemberContAcknowledgementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemberContAcknowledgementController>(
      () => MemberContAcknowledgementController(),
    );
  }
}
