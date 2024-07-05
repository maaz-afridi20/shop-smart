import 'package:shop_smart/utils/contants/exports.dart';

class OnBoardingNavigationDots extends StatelessWidget {
  const OnBoardingNavigationDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: (index) => controller.dotNavigationClicked(index),
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? light : black, dotHeight: 6),
      ),
    );
  }
}
