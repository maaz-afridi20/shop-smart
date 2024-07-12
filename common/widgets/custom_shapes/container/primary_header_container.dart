import 'package:shop_smart/utils/contants/exports.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: basicPprimaryColor,
        padding: EdgeInsets.zero,
        child: SizedBox(
          height: 350.h,
          child: Stack(children: [
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                  backgroundColor: textWhiteColor.withOpacity(0.1)),
            ),
            Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                    backgroundColor: textWhiteColor.withOpacity(0.1))),
            //
            //stack childrens
            child
          ]),
        ),
      ),
    );
  }
}
