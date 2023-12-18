import 'package:flutter/material.dart';

import '../app_colors.dart';

InputDecoration textFieldDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: TextStyle(
      color: AppColors.whiteColor,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        width: 1,
        color: AppColors.darkBlue,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        width: 1,
        color: AppColors.darkBlue,
      ),
    ),
  );
}

textFieldTextStyle() {
  return TextStyle(
    color: AppColors.darkBlue,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
}
