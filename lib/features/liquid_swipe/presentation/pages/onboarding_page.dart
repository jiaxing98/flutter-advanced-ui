import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorial/constants/images.dart';
import 'package:flutter_ui_tutorial/features/liquid_swipe/presentation/pages/marketing_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: const [
          MarketingPage(
            title: 'Best Digital Solution',
            image: kMarketing1,
            color: 0xff3937bf,
          ),
          MarketingPage(
            title: 'Achieve Your Goal',
            image: kMarketing2,
            color: 0xff27b56f,
          ),
          MarketingPage(
            title: 'Increase Your Value',
            image: kMarketing3,
            color: 0xfff46d37,
          ),
        ],
        positionSlideIcon: 0.8,
        slideIconWidget: const Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
