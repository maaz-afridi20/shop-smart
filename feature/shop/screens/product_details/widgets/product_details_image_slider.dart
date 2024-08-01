import '../../../../../utils/contants/exports.dart';

class TProductDetailsImgSlider extends StatelessWidget {
  const TProductDetailsImgSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return TCurvedEdgesWidget(
      child: Container(
          color: darkMode ? darkerGrey : light,
          child: Stack(children: [
            SizedBox(
                height: 400.h,
                child: const Padding(
                  padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(TImages.productImage10))),
                )),
            //
            // Image slider...
            Positioned(
                right: 0,
                bottom: 30.h,
                left: TSizes.defaultSpace.w,
                child: SizedBox(
                  height: 80.h,
                  child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => TRoundedImg(
                          width: 80.w,
                          backgroundColor: darkMode ? black : white,
                          border: Border.all(color: basicPprimaryColor),
                          padding: const EdgeInsets.all(TSizes.sm),
                          imgUrl: TImages.productImage3),
                      separatorBuilder: (_, __) =>
                          SizedBox(width: TSizes.spaceBwItems.w),
                      itemCount: 6),
                )),
            //
            // Appbar..
            const TAppbar(showBackArrow: true, actions: [
              TCircularIcon(icon: Iconsax.heart5, iconColor: Colors.red)
            ])
          ])),
    );
  }
}
