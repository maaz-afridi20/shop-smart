import 'package:shop_smart/utils/contants/exports.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
          title: Text("Wishlist",
              style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCircularIcon(
                icon: Iconsax.add,
                onPress: () => Get.to(() => const HomeScreen()))
          ]),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(children: [
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ])),
      ),
    );
  }
}
