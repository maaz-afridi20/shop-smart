import '../../../utils/contants/exports.dart';

class TRoundedImg extends StatelessWidget {
  const TRoundedImg({
    super.key,
    this.height,
    this.width,
    this.border,
    this.fit = BoxFit.contain,
    this.padding,
    this.onPress,
    this.applyImgRadius = true,
    this.isNetworkImg = false,
    this.backgroundColor = light,
    this.borderRadius = TSizes.md,
    required this.imgUrl,
  });

  final double? height, width;
  final String imgUrl;
  final bool applyImgRadius, isNetworkImg;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPress;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
            borderRadius: applyImgRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
                image: isNetworkImg
                    ? NetworkImage(imgUrl)
                    : AssetImage(imgUrl) as ImageProvider,
                fit: fit)),
      ),
    );
  }
}
