import '../../../../utils/contants/exports.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // Appbar.
      appBar: const TAppbar(
          title: Text("Reviews And Ratings"), showBackArrow: true),
      //
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and these are from those people who have same type of interest as you."),
              const Gap(TSizes.spaceBwItems),

              //
              // Overall product reviews.
              const TOverallProductRatings(),

              //
              // Ratings.
              const TRagingbarIndicator(rating: 3.5),
              Text("12,739", style: Theme.of(context).textTheme.bodySmall),
              Gap(TSizes.spaceBwSections.h),

              //
              // user review list...
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
