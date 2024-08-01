import 'package:shop_smart/utils/contants/exports.dart';

class TProductQuantityWithAddRemoveButtons extends StatelessWidget {
  const TProductQuantityWithAddRemoveButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
            icon: Iconsax.minus,
            width: 32,
            height: 32,
            size: TSizes.md,
            iconColor: THelperFunctions.isDarkMode(context) ? white : black,
            backgroundColor:
                THelperFunctions.isDarkMode(context) ? darkerGrey : lightGrey)
      ],
    );
  }
}
