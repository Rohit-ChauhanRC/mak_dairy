import 'package:get/get.dart';

import '../controllers/member_contribution_controller.dart';

class MemberContributionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemberContributionController>(
      () => MemberContributionController(),
    );
  }
}
