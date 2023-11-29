import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pdf_scrren_controller.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfScrrenView extends GetView<PdfScrrenController> {
  const PdfScrrenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PdfScrrenView'),
        centerTitle: true,
      ),
      body: PDFView(
        filePath: controller.filePath,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: true,
        onRender: (_pages) {},
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        onViewCreated: (PDFViewController pdfViewController) {},
        onPageChanged: (int? page, int? total) {},
      ),
    );
  }
}
