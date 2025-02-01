import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';
import 'package:my_portfolio/features/widgets/about_widget.dart';
import 'package:my_portfolio/features/widgets/app_bar_widget.dart';
import 'package:my_portfolio/features/widgets/contact_me_widget.dart';
import 'package:my_portfolio/features/widgets/experience_widget.dart';
import 'package:my_portfolio/features/widgets/introduction_widget.dart';
import 'package:my_portfolio/features/widgets/portfolio_widget.dart';
import 'package:my_portfolio/features/widgets/service_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    double offset = _scrollController.offset;

    if (offset >= 0 && offset < 300) {
      setState(() {
        _currentIndex = 0; // Home
      });
    } else if (offset >= 300 && offset < 600) {
      setState(() {
        _currentIndex = 1; // About
      });
    } else if (offset >= 600 && offset < 900) {
      setState(() {
        _currentIndex = 2; // Service
      });
    } else if (offset >= 900 && offset < 1200) {
      setState(() {
        _currentIndex = 3; // Portfolio
      });
    } else if (offset >= 1200) {
      setState(() {
        _currentIndex = 4; // Contact
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBarWidget(
              currentIndex: _currentIndex,
            )),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 50.0),
                child: IntroductionWidget(
                  scrollController: _scrollController,
                ),
              ),
              Container(
                  color: AppColors.bgColor,
                  child: AboutWidget(
                    scrollController: _scrollController,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
                  child: ServiceWidget()),
              Container(
                color: AppColors.bgColor,
                child: PortfolioWidget(),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
                  child: ExperienceWidget()),
              Container(
                  color: AppColors.bgColor, child: const ContactMeWidget()),
            ],
          ),
        ));
  }
}
