import 'package:flutter/material.dart';

import '../core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.square(20),
      child: AppBar(
        title: Text(
          Constants.appbarTitle,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
    );
  }
}
