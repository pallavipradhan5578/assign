import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _myServiceTextView(),
        const SizedBox(height: 15.0),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: const Text(
            AppStrings.myServiceSubTitle,
            style: TextStyle(fontSize: 16, color: AppColors.lightGreyColor),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30.0),
        _serviceCardsView(context),
      ],
    );
  }

  _myServiceTextView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.my,
          style: AppFontStyles.bigBodyTextStyle
              .copyWith(color: AppColors.boldWhiteColor),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(width: 8),
        Text(
          capitalizeFirstLetter(AppStrings.service.toLowerCase()),
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

  _serviceCardsView(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _serviceCard(context,
              title: "Cross-Platform Development",
              description:
                  "Built dynamic and responsive mobile applications using Flutter's single codebase to deliver consistent experiences across Android and iOS platforms.",
              icon: Icons.apple),
          const SizedBox(
            width: 30,
          ),
          _serviceCard(context,
              title: "API Integration and Backend Connectivity",
              description:
                  "Integrated RESTful APIs to enable seamless data communication between frontend and backend systems, ensuring real-time updates and efficient app functionality.",
              icon: Icons.api),
          const SizedBox(
            width: 30,
          ),
          _serviceCard(context,
              title: "Custom UI/UX Design",
              description:
                  "Designed and implemented visually appealing, user-friendly interfaces tailored to enhance user engagement and meet specific client requirements.",
              icon: Icons.design_services),
        ],
      ),
    );
  }

  _serviceCard(context,
      {required String title, required String description, required icon}) {
    return Expanded(
      flex: 3,
      child: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  icon,
                  color: AppColors.yellowColor,
                  size: 75,
                ),
                const SizedBox(height: 15),
                Text(
                  title,
                  style: AppFontStyles.bigBodyTextStyle.copyWith(fontSize: 26),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: AppFontStyles.bodyTextStyle
                      .copyWith(color: AppColors.lightGreyColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
    );
  }
}
