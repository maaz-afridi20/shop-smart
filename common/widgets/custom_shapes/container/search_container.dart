import '../../../../utils/contants/exports.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? darkMode
                    ? black
                    : light
                : Colors.transparent,
            borderRadius:
                showBorder ? BorderRadius.circular(TSizes.cardRadiusLg) : null,
            border: Border.all(color: grey)),
        child: Row(
          children: [
            Icon(icon, color: darkerGrey),
            const Gap(TSizes.spaceBwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
