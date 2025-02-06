import 'package:flutter/material.dart';
import 'package:my_portfolio/core/common_widgets/common_button.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class AboutWidget extends StatelessWidget {
  final ScrollController scrollController;
  const AboutWidget({super.key, required this.scrollController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _imageView(context),
          SizedBox(width: MediaQuery.of(context).size.width / 15),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _aboutMeTextView(),
                  const SizedBox(height: 15),
                  Text(
                    AppStrings.aboutMe,
                    style: AppFontStyles.bodyTextStyle
                        .copyWith(color: AppColors.lightGreyColor),
                    overflow: TextOverflow.clip,
                  ),
                  const SizedBox(height: 30),
                   CommonButton(
                    onPressed: () {
                      scrollController.animateTo(
                        scrollController.position.maxScrollExtent,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  _imageView(context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:15.0,top:15.0),
          child: Container(
            height: MediaQuery.of(context).size.width / 3.5,
            width: MediaQuery.of(context).size.width / 3.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.yellow, width: 10)),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          right: 0,
          top: 0,
          child: Container(
            height: MediaQuery.of(context).size.width / 3.5,
            width: MediaQuery.of(context).size.width / 3.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://i.postimg.cc/N0sXbN2s/profile.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _aboutMeTextView() {
    return Row(
      children: [
        Text(
          AppStrings.about,
          style: AppFontStyles.bigBodyTextStyle
              .copyWith(color: AppColors.boldWhiteColor),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(width: 8),
        Text(
          AppStrings.me.replaceAll(".", "") ?? "",
          style: AppFontStyles.bigBodyTextStyle
              .copyWith(color: AppColors.yellowColor),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
