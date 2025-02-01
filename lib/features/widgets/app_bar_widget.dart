import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class AppBarWidget extends StatelessWidget {
  final int currentIndex; // Receive the current index

  const AppBarWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgColor,
      title: _titleView(),
      actions: [
        _subTitleView(),
      ],
    );
  }

  _titleView() {
    return Row(
      children: [
        const Text(
          AppStrings.about,
          style: AppFontStyles.appBarTitleStyle,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          AppStrings.me,
          style: AppFontStyles.appBarTitleStyle
              .copyWith(color: AppColors.yellowColor),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  _subTitleView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _subTitleText(text: AppStrings.home, index: 0),
        const SizedBox(width: 15),
        _subTitleText(text: AppStrings.about.toUpperCase(), index: 1),
        const SizedBox(width: 15),
        _subTitleText(text: AppStrings.service, index: 2),
        const SizedBox(width: 15),
        _subTitleText(text: AppStrings.portfolio, index: 3),
        const SizedBox(width: 15),
        _subTitleText(text: AppStrings.contact, index: 4),
        const SizedBox(width: 15),
      ],
    );
  }

  _subTitleText({required String text, required int index}) {
    return Text(
      text,
      style: currentIndex == index
          ? AppFontStyles.appBarSubTitleStyle
              .copyWith(color: AppColors.whiteColor)
          : AppFontStyles.appBarSubTitleStyle,
      overflow: TextOverflow.ellipsis,
    );
  }
}
