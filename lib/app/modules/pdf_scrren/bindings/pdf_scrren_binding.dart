import 'package:get/get.dart';

import '../controllers/pdf_scrren_controller.dart';

class PdfScrrenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PdfScrrenController>(
      () => PdfScrrenController(),
    );
  }
}
