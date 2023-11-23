import 'package:get/get.dart';

import '../controllers/view_member_status_controller.dart';

class ViewMemberStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewMemberStatusController>(
      () => ViewMemberStatusController(),
    );
  }
}
