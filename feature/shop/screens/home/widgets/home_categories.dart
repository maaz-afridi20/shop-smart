import '../../../../../utils/contants/exports.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TVerticalImageText(
              image: TImages.toyIcon, title: "Toys", onTap: () {});
        },
      ),
    );
  }
}
