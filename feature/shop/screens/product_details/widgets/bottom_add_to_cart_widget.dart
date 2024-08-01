import 'package:shop_smart/utils/contants/exports.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.defaultSpace / 2, horizontal: TSizes.defaultSpace),
      decoration: BoxDecoration(
          color: darkMode ? darkerGrey : light,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(TSizes.cardRadiusLg),
              topLeft: Radius.circular(TSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: <Widget>[
            TCircularIcon(
                icon: Iconsax.minus,
                width: 40.w,
                height: 40.h,
                iconColor: white),
            Gap(TSizes.spaceBwItems.w),
            Text("2", style: Theme.of(context).textTheme.titleSmall),
            Gap(TSizes.spaceBwItems.w),
            TCircularIcon(
                icon: Iconsax.add, width: 40.w, height: 40.h, iconColor: white)
          ]),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(TSizes.sm),
                  backgroundColor: black,
                  side: const BorderSide(color: black)),
              child: const Text("Add to cart"))
        ],
      ),
    );
  }
}
