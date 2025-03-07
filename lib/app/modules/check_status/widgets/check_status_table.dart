import 'package:flutter/material.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';

import '../../../core/constants/constants.dart';

class CheckStatusTable extends StatelessWidget {
  const CheckStatusTable({super.key});

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
                Constants.refCode,
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
                Constants.status,
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
