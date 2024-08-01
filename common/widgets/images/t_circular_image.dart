import 'package:shop_smart/utils/contants/exports.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage(
      {super.key,
      this.width = 56,
      this.height = 56,
      this.overlayColor,
      this.backgroundColor,
      required this.image,
      this.fit = BoxFit.cover,
      this.padding = TSizes.sm,
      this.isNetworkImage = false});

  final double width, height, padding;
  final Color? backgroundColor, overlayColor;
  final bool isNetworkImage;
  final String image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Container(
        width: width.w,
        height: height.h,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: backgroundColor ?? (darkMode ? black : white),
            borderRadius: BorderRadius.circular(100.r)),
        child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            color: overlayColor));
  }
}
