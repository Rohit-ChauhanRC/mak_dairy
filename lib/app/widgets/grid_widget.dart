import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/constants/constants.dart';
import 'package:mak_dairy/app/routes/app_pages.dart';
import 'package:mak_dairy/app/widgets/card_widget.dart';

class GridWidget extends StatelessWidget {
  GridWidget({super.key});

  get itemBuilder => null;

  final List gridList = [
    {
      "icon": Icons.screen_share_rounded,
      "title": Constants.shareReg,
      "onTap": () {
        Get.toNamed(Routes.SHARE_REGISTRATION);
      }
    },
    {
      "icon": Icons.wallet_membership,
      "title": Constants.memberCont,
      "onTap": () {}
    },
    {
      "icon": Icons.checklist_outlined,
      "title": Constants.checkStatus,
      "onTap": () {}
    },
    {"icon": Icons.paypal, "title": Constants.payPartial, "onTap": () {}},
    {
      "icon": Icons.view_carousel,
      "title": Constants.viewMember,
      "onTap": () {}
    },
    {
      "icon": Icons.add_business_rounded,
      "title": Constants.addShare,
      "onTap": () {}
    },
    {
      "icon": Icons.update_outlined,
      "title": Constants.shareAck,
      "onTap": () {}
    },
    {
      "icon": Icons.share_arrival_time,
      "title": Constants.shareReg,
      "onTap": () {}
    },
    {
      "icon": Icons.pages_outlined,
      "title": Constants.memberContAck,
      "onTap": () {}
    },
    {
      "icon": Icons.receipt_long_outlined,
      "title": Constants.memReceipt,
      "onTap": () {}
    },
    {
      "icon": Icons.legend_toggle_rounded,
      "title": Constants.memLedger,
      "onTap": () {}
    },
    {
      "icon": Icons.food_bank_outlined,
      "title": Constants.bankDetail,
      "onTap": () {}
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: gridList.length,
        itemBuilder: (_, i) {
          var grid = gridList[i];
          return CardWidget(
            icon: grid["icon"],
            title: grid["title"],
            onTap: grid["onTap"],
          );
        });
  }
}
