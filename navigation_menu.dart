import 'package:shop_smart/feature/shop/screens/store/store.dart';

import 'utils/contants/exports.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              backgroundColor: darkMode ? black : white,
              indicatorColor:
                  darkMode ? white.withOpacity(0.1) : black.withOpacity(0.1),
              onDestinationSelected: (value) =>
                  controller.updateCurrentIndex(value),
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
                NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
                NavigationDestination(
                    icon: Icon(Iconsax.heart), label: "Wishlist"),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: "Profile")
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    Container(color: Colors.yellow),
    Container(color: Colors.red)
  ];

  void updateCurrentIndex(index) => selectedIndex.value = index;
}
