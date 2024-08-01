import 'package:shop_smart/feature/shop/screens/product_reviews/widgets/progress_indicator_and_ratings.dart';

import '../../../../../utils/contants/exports.dart';

class TOverallProductRatings extends StatelessWidget {
  const TOverallProductRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 3,
            child:
                Text("4.9", style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: <Widget>[
              TRatingsProgressIndicator(text: "5", value: 1),
              TRatingsProgressIndicator(text: "4", value: 0.8),
              TRatingsProgressIndicator(text: "3", value: 0.6),
              TRatingsProgressIndicator(text: "2", value: 0.4),
              TRatingsProgressIndicator(text: "1", value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
