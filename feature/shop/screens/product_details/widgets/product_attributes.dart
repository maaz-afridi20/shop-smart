import 'package:shop_smart/common/widgets/chips/choice_chip.dart';
import 'package:shop_smart/utils/contants/exports.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //
        // selected attribute pricing and description
        const Gap(TSizes.spaceBwItems),
        TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: darkMode ? darkerGrey : grey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //
              // title price and stock
              Row(children: [
                const TSectionHeading(
                    title: "Variations", showActionBtn: false),
                const Gap(TSizes.spaceBwItems),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(children: [
                    const TProductTitleText(title: "Price ", smallSize: true),
                    //
                    // Actual price
                    Text("\$25",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough)),

                    Gap(TSizes.spaceBwItems.w),
                    //
                    // sale price
                    const TProductPriceText(price: "20"),
                  ]),
                  //
                  // Stock
                  Row(children: [
                    const TProductTitleText(title: "Stock : ", smallSize: true),
                    Text("In Stock",
                        style: Theme.of(context).textTheme.titleMedium)
                  ])
                ])
              ]),
              Gap(TSizes.spaceBwItems.h),
              //
              // variation description
              const TProductTitleText(
                  title:
                      "This is the description of the product we can add more this will show the small size and we can add some more lines just to see what is going on",
                  smallSize: true,
                  maxLines: 4)
            ])),

        Gap(TSizes.spaceBwItems.h),

        //
        // Attributes
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const TSectionHeading(title: "Colors", showActionBtn: false),
          const Gap(TSizes.spaceBwItems / 2),
          Wrap(
            spacing: 8,
            children: [
              TChoiceChip(
                  selected: true, text: "Green", onSelected: (value) {}),
              TChoiceChip(selected: false, text: "Red", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Blue", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Grey", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Pink", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Purple", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Brown", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Brown", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Brown", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Brown", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "Brown", onSelected: (value) {}),
            ],
          )
        ]),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size", showActionBtn: false),
            const Gap(TSizes.spaceBwItems / 2),
            Wrap(spacing: 8, children: [
              TChoiceChip(
                  selected: true, text: "EU 48", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "EU 46", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "EU 44", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "EU 42", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "EU 40", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "EU 38", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "EU 36", onSelected: (value) {}),
              TChoiceChip(
                  selected: false, text: "EU 34", onSelected: (value) {}),
              TChoiceChip(
                  selected: true, text: "EU 32", onSelected: (value) {}),
            ])
          ],
        )
      ],
    );
  }
}
