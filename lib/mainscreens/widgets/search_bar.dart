import 'package:flutter/material.dart';
import 'package:glass_login/utils/app_colors.dart';

class SearchTextForm extends StatelessWidget {
  const SearchTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.darkBlue,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: AppColors.darkBlue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.darkBlue,
            )),
        labelStyle: TextStyle(
          color: AppColors.darkBlue,
        ),
        labelText: 'Search Food',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
