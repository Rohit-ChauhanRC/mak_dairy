import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //
  final GlobalKey drawerKey = GlobalKey();

  final RxString _timeString = "".obs;
  String get timeString => _timeString.value;
  set timeString(String str) => _timeString.value = str;

  @override
  void onInit() {
    super.onInit();
    // pickTime();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void pickTime() {
    _timeString.value =
        "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getCurrentTime());
  }

  void _getCurrentTime() {
    _timeString.value =
        "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
  }

  // void timeStream() async {
  //   await Isolate.spawn();
  // }
}
