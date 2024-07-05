import 'package:shop_smart/utils/contants/exports.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  // variables
  final PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  //
  void updatePageIndicator(index) => currentPageIndex = index;

  //
  void dotNavigationClicked(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //
  void nextPage() {
    if (currentPageIndex.value == 2) {
      THelperFunctions.navigateOfAll(Get.context!, const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
