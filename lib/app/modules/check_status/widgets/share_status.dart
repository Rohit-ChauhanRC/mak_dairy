import 'package:flutter/material.dart';

import 'check_status_table.dart';

class ShareStatus extends StatelessWidget {
  const ShareStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckStatusTable(),
    );
  }
}
