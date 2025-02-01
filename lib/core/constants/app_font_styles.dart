import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';

class AppFontStyles {
  static const appBarTitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const appBarSubTitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
  static const bodyTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
  static const bigBodyTextStyle = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: AppColors.boldWhiteColor,
  );
}
