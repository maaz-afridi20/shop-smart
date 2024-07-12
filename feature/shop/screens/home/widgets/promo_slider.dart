import 'package:shop_smart/feature/shop/controllers/home_controller.dart';
import 'package:shop_smart/utils/contants/exports.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => TRoundedImg(imgUrl: url)).toList(),
            options: CarouselOptions(
                onPageChanged: (index, reason) => controller.updateIndex(index),
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: true)),
        Gap(TSizes.spaceBwItems.h),
        Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                      width: controller.couroselSliderIndex.value == i
                          ? 25.w
                          : 15.w,
                      height: 4.h,
                      margin: EdgeInsets.only(right: 10.w),
                      backgroundColor: controller.couroselSliderIndex.value == i
                          ? basicPprimaryColor
                          : grey),
              ],
            ))
      ],
    );
  }
}
