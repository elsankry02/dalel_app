import 'package:dalel_app/core/utils/constants/app_strings.dart';
import 'package:dalel_app/core/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static final lightTheme = ThemeData(
    brightness: .light,
    primaryColor: AppColors.primaryColor,
    fontFamily: AppStrings.poppins,
  );
  static final darkTheme = ThemeData(
    brightness: .dark,
    fontFamily: AppStrings.pacifico,
  );
}
