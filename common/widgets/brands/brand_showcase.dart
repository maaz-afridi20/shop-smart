import 'package:shop_smart/utils/contants/exports.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        showBorder: true,
        borderColor: darkGrey,
        backgroundColor: Colors.transparent,
        margin: const EdgeInsets.only(bottom: TSizes.defaultSpace),
        child: Column(children: [
          //
          // brands with product count
          const TBrandCard(showBorder: false),
          const Gap(TSizes.spaceBwItems),
          //
          // brand top 3 products...
          Row(
              children: images
                  .map((mImage) => brandTopProductImageWidget(mImage, context))
                  .toList())
        ]));
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: TRoundedContainer(
            height: 100.h,
            padding: const EdgeInsets.all(TSizes.sm),
            margin: const EdgeInsets.only(right: TSizes.sm),
            backgroundColor:
                THelperFunctions.isDarkMode(context) ? darkerGrey : light,
            child: Image(fit: BoxFit.contain, image: AssetImage(image))));
  }
}
