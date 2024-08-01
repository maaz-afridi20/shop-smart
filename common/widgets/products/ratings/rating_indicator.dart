import '../../../../utils/contants/exports.dart';

class TRagingbarIndicator extends StatelessWidget {
  const TRagingbarIndicator({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: grey,
        itemBuilder: (_, __) =>
            const Icon(Iconsax.star1, color: basicPprimaryColor));
  }
}
