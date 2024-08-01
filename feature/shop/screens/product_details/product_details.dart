import 'package:shop_smart/utils/contants/exports.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        //
        // product image slider
        const TProductDetailsImgSlider(),

        //
        // product details
        Padding(
          padding: const EdgeInsets.only(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //
              //
              // rating and share button
              const TRatingAndShare(),
              //
              //
              // price,title,stock and brand
              const TProductMetaData(),

              //
              // Attributes
              const TProductAttributes(),
              Gap(TSizes.spaceBwSections.h),
              //
              // checkout button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Checkout"))),
              Gap(TSizes.spaceBwSections.h),
              //
              // description
              const TSectionHeading(title: "Description", showActionBtn: false),
              Gap(TSizes.spaceBwItems.h),

              const ReadMoreText(
                  "this is the prouct description in which we will add some more description about the products and that description will be dynamic not static and that description will came from database.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: " Show more",
                  trimExpandedText: " Show less",
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
              Gap(TSizes.spaceBwSections.h),
              //
              // reviews
              const Divider(),
              Gap(TSizes.spaceBwItems.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TSectionHeading(
                      title: "Reviews(199)", showActionBtn: false),
                  IconButton(
                      onPressed: () =>
                          Get.to(() => const ProductReviewScreen()),
                      icon: const Icon(Iconsax.arrow_right_3, size: 18))
                ],
              )
            ],
          ),
        )

        //
        //
      ])),
      bottomNavigationBar: const TBottomAddToCart(),
    );
  }
}
