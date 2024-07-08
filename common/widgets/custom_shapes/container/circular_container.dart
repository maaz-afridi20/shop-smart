import '../../../../utils/contants/exports.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = 0,
      this.backgroundColor,
      this.child});

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(400),
          color: backgroundColor ?? textWhiteColor.withOpacity(0.1)),
      child: child,
    );
  }
}
