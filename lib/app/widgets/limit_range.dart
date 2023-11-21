import 'package:flutter/services.dart';

class LimitRange extends TextInputFormatter {
  LimitRange(
    this.minRange,
  );

  final int minRange;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var value = int.parse(newValue.text);
    if (value < minRange) {
      return TextEditingValue(text: minRange.toString());
    }
    return newValue;
  }
}
