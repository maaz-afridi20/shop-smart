import 'package:shop_smart/common/widgets/texts/brand_title_text.dart';
import 'package:shop_smart/utils/contants/enums.dart';
import 'package:shop_smart/utils/contants/exports.dart';

class TBrandTitleWithVerifyIcon extends StatelessWidget {
  const TBrandTitleWithVerifyIcon(
      {super.key,
      this.textColor,
      this.maxlines = 1,
      required this.title,
      this.iconColor = basicPprimaryColor,
      this.textAlign = TextAlign.center,
      this.brandTextSizes = TextSizes.small});

  final String title;
  final int maxlines;
  final Color? iconColor, textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Flexible(
          child: TBrandTitleText(
              title: title,
              color: textColor,
              maxLines: maxlines,
              textAlign: textAlign,
              brandTextSizes: brandTextSizes)),
      const Gap(TSizes.xs),
      Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs)
    ]);
  }
}
