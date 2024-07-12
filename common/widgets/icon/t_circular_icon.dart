import 'package:shop_smart/utils/contants/exports.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size = TSizes.lg,
      required this.icon,
      this.backgroundColor,
      this.iconColor,
      this.onPress});

  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor, iconColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : darkMode
                ? black.withOpacity(0.9)
                : white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
            onPressed: onPress, icon: Icon(icon, size: size, color: iconColor)),
      ),
    );
  }
}
