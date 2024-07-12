import 'package:shop_smart/utils/contants/exports.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: 180.w,

          // padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              boxShadow: [TShadowsStyle.verticalProducShadow],
              borderRadius: BorderRadius.circular(TSizes.productImageRadius),
              color: darkMode ? darkerGrey : white),
          child: Column(
            children: [
              //
              // Thumbnail, wishlist, discount tag
              TRoundedContainer(
                  height: 180.h,
                  width: 180.w,
                  padding: const EdgeInsets.all(TSizes.sm),
                  backgroundColor: darkMode ? black : light,
                  child: Stack(children: [
                    //
                    // Thumbnail image

                    const TRoundedImg(
                        imgUrl: TImages.productImage1, applyImgRadius: true),

                    //
                    // sale tag
                    Positioned(
                        left: 5.w,
                        top: 12.h,
                        child: TRoundedContainer(
                            radius: TSizes.sm,
                            padding: const EdgeInsets.symmetric(
                                vertical: TSizes.xs, horizontal: TSizes.sm),
                            backgroundColor:
                                basicSecondaryColor.withOpacity(0.8),
                            child: Text("25%",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .apply(color: black)))),
                    //
                    // favourite icon

                    Positioned(
                        right: 5,
                        top: 4.h,
                        child: TCircularIcon(
                            height: 40.h,
                            width: 40.w,
                            icon: Iconsax.heart5,
                            iconColor: Colors.red,
                            size: 20))
                  ])),
              const Gap(TSizes.sm),
              //
              // Details.
              Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TProductTitleText(
                            title: "Green Nike Shoes", smallSize: true),
                        const Gap(TSizes.spaceBwItems / 2),
                        Row(children: [
                          Text("Nike",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Theme.of(context).textTheme.labelMedium),
                          const Gap(TSizes.xs),
                          const Icon(Iconsax.verify5,
                              color: basicPprimaryColor, size: TSizes.iconXs),
                        ])
                      ])),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    // price
                    const TProductPriceText(price: "35", isLarge: true),
                    //
                    //
                    const Gap(8),
                    Container(
                      decoration: const BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                      child: const SizedBox(
                          height: 32 * 1.2,
                          width: 32 * 1.2,
                          child:
                              Center(child: Icon(Iconsax.add, color: white))),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
