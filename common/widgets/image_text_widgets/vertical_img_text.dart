import '../../../utils/contants/exports.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //
        // circular icon
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(right: TSizes.spaceBwItems),
            child: Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (darkMode ? black : white),
                  shape: BoxShape.circle),
              child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: darkMode ? light : black),
            ),
          ),
        ),

        //
        // Text
        const Gap(TSizes.spaceBwItems / 2),
        SizedBox(
            width: 55,
            child: Text(title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis))
      ],
    );
  }
}
