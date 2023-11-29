import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/acknowledgement_pdf.dart';
import 'package:mak_dairy/app/core/utils/computer_generated_receipt.dart';
import 'package:mak_dairy/app/core/utils/member_receipt_pdf.dart';
import 'package:mak_dairy/app/routes/app_pages.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_dimens.dart';

class ShareAcknoweldgementTable extends StatelessWidget {
  const ShareAcknoweldgementTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Table(
        border: TableBorder.all(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.black,
        ),
        children: [
          TableRow(children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                Constants.sNo,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                Constants.shareId,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                Constants.name,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                Constants.download,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                Constants.sNo,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                Constants.refCode,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                Constants.name,
                style: TextStyle(
                  fontSize: AppDimens.font16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () async {
                  print("generate");
                  await MemberReceiptPdf.generateReceiptPdf("ack_share2");
                  print("open");
                  await MemberReceiptPdf.openFile(name: "ack_share2.pdf");
                  // Share.shareFiles(
                  //   [await AckPdfFiles.sharePdf(name: "ack_share2.pdf")],
                  //   text: "ack_share2.pdf",
                  // );

                  Get.toNamed(Routes.PDF_SCRREN,
                      arguments: await MemberReceiptPdf.sharePdf(
                          name: "ack_share2.pdf"));
                },
                child: const Text(
                  Constants.download,
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                  ),
                ),
              ),
            ),
          ]),
        ],
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
