import 'package:flutter/material.dart';
import 'package:mak_dairy/app/core/utils/app_colors.dart';

class TextFormDropDown extends StatelessWidget {
  const TextFormDropDown({
    super.key,
    this.onChanged,
    required this.label,
    this.onChangedDrop,
    required this.items,
    this.value,
    required this.hintDrop,
  });
  final void Function(String)? onChanged;
  final void Function(String?)? onChangedDrop;
  final String label;
  final List<String> items;
  final String? value;
  final String hintDrop;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Text(label),
        filled: true,
        isDense: true,
        contentPadding: const EdgeInsets.only(left: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        prefixIcon: Container(
          width: 60,
          // margin: const EdgeInsets.all(1.5),
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              autofocus: true,
              isExpanded: true,
              // style: TextStyle(
              //   color: AppColors.white,
              // ),
              icon: const Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.white,
              ),

              hint: Container(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: Text(
                  hintDrop,
                  style: const TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ),
              // iconSize: 40,
              onChanged: onChangedDrop,
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      value,
                      // style: const TextStyle(
                      //   color: AppColors.black,
                      // ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
