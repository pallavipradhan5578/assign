import 'package:flutter/material.dart';
import 'package:my_portfolio/core/common_widgets/common_button.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
      child: Column(
        children: [
          _contactMeTextView(),
          const SizedBox(height: 10),
          const Text(
            AppStrings.myContactDescription,
            style: AppFontStyles.appBarSubTitleStyle,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _myPersonalInfo(),
              SizedBox(width: MediaQuery.of(context).size.width / 4),
              _inqueryView(),
            ],
          ),
          const SizedBox(height: 50),
          Text(
            AppStrings.socialMedia,
            style: AppFontStyles.bigBodyTextStyle
                .copyWith(color: AppColors.boldWhiteColor, fontSize: 20),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('screenshots/linkedin.png'),
                height: 35,
                width: 35,
                color: Colors.white,
              ),
              SizedBox(width: 35),
              Image(
                image: AssetImage('screenshots/github.png'),
                height: 35,
                width: 35,
              ),
            ],
          )
        ],
      ),
    );
  }

  _contactMeTextView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          capitalizeFirstLetter(AppStrings.contact.toLowerCase() ?? ""),
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

  String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  _myPersonalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(AppStrings.address,
                style: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.yellowColor)),
            Text("Rajiv Nagar,Sector 12, ( Gurugram ).",
                style: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.boldWhiteColor)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(AppStrings.phoneNumber,
                style: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.yellowColor)),
            Text("+91 7061553437",
                style: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.boldWhiteColor)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(AppStrings.email,
                style: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.yellowColor)),
            Text("pallavipradhan5578@gmail.com",
                style: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.boldWhiteColor)),
          ],
        ),
      ],
    );
  }

  _inqueryView() {
    return Expanded(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 15.0),
            TextField(
              style: AppFontStyles.bodyTextStyle,
              decoration: InputDecoration(
                fillColor: AppColors.textFieldBgColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Name",
                hintStyle: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.lightGreyColor),
              ),
            ),
            const SizedBox(height: 15.0),
            TextField(
              style: AppFontStyles.bodyTextStyle,
              decoration: InputDecoration(
                fillColor: AppColors.textFieldBgColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Message",
                hintStyle: AppFontStyles.bodyTextStyle
                    .copyWith(color: AppColors.lightGreyColor),
              ),
              maxLines: 10,
            ),
            const SizedBox(height: 15.0),
            CommonButton(
              onPressed: () {},
            ),
          ]),
    );
  }
}
