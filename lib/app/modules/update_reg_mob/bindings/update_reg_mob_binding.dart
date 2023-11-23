import 'package:get/get.dart';

import '../controllers/update_reg_mob_controller.dart';

class UpdateRegMobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateRegMobController>(
      () => UpdateRegMobController(),
    );
  }
}
