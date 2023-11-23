import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/copy_right.dart';
import '../../../widgets/grid_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const SizedBox(height: 80, child: CopyRight()),
      appBar: AppBar(
        title: SizedBox(
          width: Get.width - 20,
          child: Text(
            Constants.appbarTitle.toUpperCase().toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            overflow: TextOverflow.visible,
          ),
        ),
        backgroundColor: Colors.purple[900],
        centerTitle: true,
      ),
      drawer: AppDrawer(
        key: controller.drawerKey,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            // height: 60,
            child: Text(
              Constants.welcome,
              style: TextStyle(
                  color: Colors.purple[900],
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            // height: 60,
            child: Text(
              Constants.queryContact,
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: Get.height * 0.7, child: Center(child: GridWidget())),
          // Expanded(
          //   child: Container(
          //     alignment: Alignment.bottomCenter,
          //     color: Colors.purple[900],
          //     child: const Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           Constants.copyright,
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ),
          //         SizedBox(
          //           height: 10,
          //         ),
          //         Text(
          //           Constants.appbarTitle + Constants.allRightReserved,
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
