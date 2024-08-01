import 'package:shop_smart/utils/contants/exports.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(children: [
                //
                //! brands
                const Gap(TSizes.spaceBwItems),
                const TBrandShowCase(images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3
                ]),

                //
                //! products
                TSectionHeading(
                    title: "You might like",
                    onPress: () => Get.to(() => const ProductDetailsScreen())),
                const Gap(TSizes.spaceBwItems),

                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical()),
                const Gap(TSizes.spaceBwSections),
              ])),
        ]);
  }
}
