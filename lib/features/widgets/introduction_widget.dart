import 'package:flutter/material.dart';
import 'package:my_portfolio/core/common_widgets/common_button.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class IntroductionWidget extends StatelessWidget {
  final ScrollController scrollController;
  const IntroductionWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.welcome,
                  style: AppFontStyles.bodyTextStyle
                      .copyWith(color: AppColors.yellowColor),
                ),
                const Text(AppStrings.name,
                    style: AppFontStyles.bigBodyTextStyle),
                Text(
                  "I am a fresher Flutter Developer with a strong foundation in building cross-platform mobile applications and a passion for creating smooth, user-friendly experiences.",
                  style: AppFontStyles.bodyTextStyle
                      .copyWith(color: AppColors.lightGreyColor),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CommonButton(
                  onPressed: () {
                    scrollController.animateTo(
                      scrollController.position.maxScrollExtent,
                      duration: const Duration(seconds: 2),
                      curve: Curves.easeInOut,
                    );
                  },
                )
              ]),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 10,
        ),
        Container(
          height: MediaQuery.of(context).size.width / 4,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: const DecorationImage(
              image:  NetworkImage('https://i.postimg.cc/N0sXbN2s/profile.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
