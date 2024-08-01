import 'package:shop_smart/utils/contants/exports.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: <Widget>[
          const CircleAvatar(backgroundImage: AssetImage(TImages.userImage)),
          const Gap(TSizes.spaceBwItems),
          Text("John Doe", style: Theme.of(context).textTheme.titleLarge)
        ]),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ]),
      const Gap(TSizes.spaceBwItems),
      //
      // user Reviews
      Row(children: [
        const TRagingbarIndicator(rating: 4),
        const Gap(TSizes.spaceBwItems),
        Text("01 Nov 2024", style: Theme.of(context).textTheme.bodyMedium),
      ]),
      const Gap(TSizes.spaceBwItems),
      //
      //
      ReadMoreText(
          "The product which i bought was very good this is very good platform i like your app named shop smart i definitely shop again try to tell my frind also about this platrofm.",
          trimLines: 2,
          trimExpandedText: " show less",
          trimCollapsedText: " show more",
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: basicPprimaryColor),
          lessStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: basicPprimaryColor)),
      const Gap(TSizes.spaceBwItems),

      //
      // Company review

      TRoundedContainer(
          backgroundColor: darkMode ? darkerGrey : grey,
          child: Padding(
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Shop's Smart",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text("23 Nov 2024",
                          style: Theme.of(context).textTheme.bodyMedium)
                    ]),
                const Gap(TSizes.spaceBwItems),
                ReadMoreText(
                    "The product which i bought was very good this is very good platform i like your app named shop smart i definitely shop again try to tell my frind also about this platrofm.",
                    trimLines: 2,
                    trimExpandedText: " show less",
                    trimCollapsedText: " show more",
                    trimMode: TrimMode.Line,
                    moreStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: basicPprimaryColor),
                    lessStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: basicPprimaryColor))
              ]))),
      const Gap(TSizes.spaceBwSections)
    ]);
  }
}
