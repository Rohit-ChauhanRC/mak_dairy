import 'package:flutter/material.dart';

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
              child: const Text(
                Constants.status,
                style: TextStyle(
                  fontSize: AppDimens.font16,
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
