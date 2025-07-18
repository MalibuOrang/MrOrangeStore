import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mr_orange_store/features/authentication/screens/onboarding/widgets/onboarding_body.dart';
import 'package:mr_orange_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mr_orange_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mr_orange_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingBody(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingBody(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingBody(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
