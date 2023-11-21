import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    super.key,
    required this.tabs,
    this.controller,
    required this.tabChildren,
  });

  final List<String> tabs;
  final TabController? controller;
  final List<Widget> tabChildren;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // padding: const EdgeInsets.only(left: 30),
          width: Get.width,
          color: Colors.purple[900],
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            controller: controller,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            isScrollable: true,
            physics: const AlwaysScrollableScrollPhysics(),
            labelStyle: const TextStyle(
              fontSize: AppDimens.font16,
            ),
            tabs: [
              for (int i = 0; i < tabs.length; i++)
                Tab(
                  icon: Container(
                    alignment: Alignment.center,
                    width: 150,
                    child: Text(
                      tabs[i],
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: tabChildren,
          ),
        ),
      ],
    );
  }
}
