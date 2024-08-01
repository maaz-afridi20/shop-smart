import '../../../../utils/contants/exports.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: TAppbar(
              title: Text("Store",
                  style: Theme.of(context).textTheme.headlineMedium),
              actions: [TCartCounterIcon(onPress: () {})]),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                      automaticallyImplyLeading: false,
                      pinned: true,
                      floating: true,
                      backgroundColor:
                          THelperFunctions.isDarkMode(context) ? black : white,
                      expandedHeight: 440.h,
                      flexibleSpace: Padding(
                          padding: const EdgeInsets.all(TSizes.defaultSpace),
                          child: ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                const Gap(TSizes.spaceBwItems),
                                const TSearchContainer(
                                    text: "Search In Store",
                                    showBackground: false,
                                    padding: EdgeInsets.zero),
                                const Gap(TSizes.spaceBwSections),

                                //
                                // Feature Brands
                                TSectionHeading(
                                    title: "Feature Brands",
                                    showActionBtn: true,
                                    onPress: () {}),
                                const Gap(TSizes.spaceBwItems / 1.5),

                                //
                                //
                                TGridLayout(
                                    itemCount: 4,
                                    mainAxisExtent: 80.h,
                                    itemBuilder: (_, index) {
                                      return const TBrandCard(
                                          showBorder: false);
                                    })
                              ])),

                      //
                      // Tabs...
                      bottom: const TTabBar(tabs: [
                        Tab(child: Text("Sports")),
                        Tab(child: Text("Furniture")),
                        Tab(child: Text("Electronics")),
                        Tab(child: Text("Clothes")),
                        Tab(child: Text("Cosmetics"))
                      ]))
                ];
              },
              body: const TabBarView(children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab()
              ]))),
    );
  }
}
