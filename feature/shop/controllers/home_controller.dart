import 'package:shop_smart/utils/contants/exports.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final couroselSliderIndex = 0.obs;

  void updateIndex(index) {
    couroselSliderIndex.value = index;
  }
}
