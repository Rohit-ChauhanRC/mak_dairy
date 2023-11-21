import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black26,
      elevation: 10,
      width: Get.width / 2,
      child: ListView(
        children: [
          Container(
            // height: 200,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  child: FlutterLogo(),
                ),
                ListTile(
                  title: Text(
                    "Good Afternoon".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "9876543210".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            title: Text(
              Constants.companyInfo.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            title: Text(
              Constants.aboutUs.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            title: Text(
              Constants.legal.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.bottomLeft,
            child: Text(
              Constants.logout.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
