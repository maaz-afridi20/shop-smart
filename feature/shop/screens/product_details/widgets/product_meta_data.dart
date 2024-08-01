import 'package:shop_smart/utils/contants/enums.dart';

import '../../../../../utils/contants/exports.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //
      // price & sale price

      Row(children: [
        //
        // sale tag
        TRoundedContainer(
            radius: TSizes.sm,
            padding: const EdgeInsets.symmetric(
                vertical: TSizes.xs, horizontal: TSizes.sm),
            backgroundColor: basicSecondaryColor.withOpacity(0.8),
            child: Text("25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: black))),
        Gap(TSizes.spaceBwItems.w),

        //
        // price
        Text("\$250",
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .apply(decoration: TextDecoration.lineThrough)),
        Gap(TSizes.spaceBwItems.w),
        const TProductPriceText(price: "200", isLarge: true)
      ]),
      Gap(TSizes.spaceBwItems / 1.5.h),

      //
      // title
      const TProductTitleText(title: "Green Nike Sports Shirt"),
      Gap(TSizes.spaceBwItems / 1.5.h),
      //
      // stock status
      Row(children: [
        const TProductTitleText(title: "Status"),
        Gap(TSizes.spaceBwItems.w),
        Text("In Stock", style: Theme.of(context).textTheme.titleMedium)
      ]),
      //
      // brand
      Row(children: [
        TCircularImage(
            image: TImages.nikelogo,
            width: 32.w,
            height: 32.h,
            overlayColor: darkMode ? white : black),
        Gap(TSizes.spaceBwItems.w),
        const TBrandTitleWithVerifyIcon(
            title: "Nike", brandTextSizes: TextSizes.medium)
      ])
    ]);
  }
}
