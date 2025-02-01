import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _myExperienceTextView(),
        const SizedBox(height: 15.0),
        const Text(
          AppStrings.myExperienceDescription,
          style: TextStyle(fontSize: 16, color: AppColors.lightGreyColor),
        ),
        const SizedBox(height: 30.0),
        _experienceCard(context),
      ],
    );
  }

  _myExperienceTextView() {
    return Row(
      children: [
        Text(
          AppStrings.my,
          style: AppFontStyles.bigBodyTextStyle
              .copyWith(color: AppColors.boldWhiteColor),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(width: 8),
        Text(
          capitalizeFirstLetter(AppStrings.experience.toLowerCase()),
          style: AppFontStyles.bigBodyTextStyle
              .copyWith(color: AppColors.yellowColor),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  _experienceCard(context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.bgColor, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
               Text(
                "27 DECEMBER 2024 - PRESENT",
                style: AppFontStyles.bodyTextStyle.copyWith(color: AppColors.lightGreyColor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Flutter Developer Intern",
                style: AppFontStyles.bigBodyTextStyle
                    .copyWith(color: AppColors.yellowColor, fontSize: 26),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Softezi Solutions",
                style: AppFontStyles.bodyTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                "During my internship as a Flutter Developer, I am responsible for building and maintaining cross-platform mobile apps, integrating APIs, and optimizing app performance. I also collaborate with the team to implement features and ensure smooth user experiences.",
                style: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.lightGreyColor),
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
              ),
            ],
          ),
        ));
  }
}
