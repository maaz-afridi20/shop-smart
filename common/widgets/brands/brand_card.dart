import 'package:shop_smart/utils/contants/enums.dart';
import 'package:shop_smart/utils/contants/exports.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bool darkMode = THelperFunctions.isDarkMode(context);
    return GestureDetector(
        onTap: onTap,
        child: TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.sm),
            showBorder: showBorder,
            backgroundColor: Colors.transparent,
            child: Row(children: [
              //
              // icon
              Flexible(
                  child: TCircularImage(
                      isNetworkImage: false,
                      image: TImages.nikelogo,
                      backgroundColor: Colors.transparent,
                      overlayColor: darkMode ? white : black)),
              //
              //
              const Gap(TSizes.spaceBwItems / 2),
              //
              //
              Expanded(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const TBrandTitleWithVerifyIcon(
                        title: "Nike", brandTextSizes: TextSizes.large),
                    Text("24 Products",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium)
                  ]))
            ])));
  }
}
