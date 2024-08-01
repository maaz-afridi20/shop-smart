import 'package:shop_smart/utils/contants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        //
        // primary header..
        TPrimaryHeaderContainer(
            child: Column(children: [
          //
          //! appbar
          const THomeAppbar(),
          Gap(TSizes.spaceBwSections.h),

          //
          //! search bar
          const TSearchContainer(text: "Search In Store"),
          Gap(TSizes.spaceBwSections.h),

          //
          //! categories
          Padding(
              padding: const EdgeInsets.only(left: TSizes.defaultSpace),
              child: Column(children: [
                const TSectionHeading(
                    title: "Popular Categories",
                    showActionBtn: false,
                    textColor: white),
                Gap(TSizes.spaceBwItems.h),

                //
                // Scrollable categories
                const THomeCategories()
              ])),
          Gap(TSizes.spaceBwSections.h)
        ])),

        //
        // below the blue part
        // starting of BODY

        Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace.h),
            child: Column(
              children: [
                //
                // promo slider
                const TPromoSlider(banners: [
                  TImages.promoBanner3,
                  TImages.promoBanner2,
                  TImages.promoBanner4
                ]),
                Gap(TSizes.spaceBwSections.h),

                //
                // Heading
                const TSectionHeading(
                    title: "Popular Products", showActionBtn: false),
                Gap(TSizes.spaceBwItems.h),

                //
                // popular products
                TGridLayout(
                  itemBuilder: (index, _) => const TProductCardVertical(),
                  itemCount: 4,
                ),
              ],
            ))
      ]))),
    );
  }
}
