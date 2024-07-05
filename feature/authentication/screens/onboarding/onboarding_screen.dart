import 'package:shop_smart/utils/contants/exports.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // scrollable pages
          PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                    image: TImages.onBoardingImage2,
                    title: TTextStrings.onBoardingTitle1,
                    subtitle: TTextStrings.onBoardingSubTitle1),
                OnBoardingPage(
                    image: TImages.onBoardingImage3,
                    title: TTextStrings.onBoardingTitle2,
                    subtitle: TTextStrings.onBoardingSubTitle2),
                OnBoardingPage(
                    image: TImages.onBoardingImage1,
                    title: TTextStrings.onBoardingTitle3,
                    subtitle: TTextStrings.onBoardingSubTitle3)
              ]),

          //
          // skip button
          const OnBoardingSkip(),

          //
          // smooth page indicator
          const OnBoardingNavigationDots(),

          //
          // btn
          const OnBoardingNextBtn()
        ],
      ),
    );
  }
}
