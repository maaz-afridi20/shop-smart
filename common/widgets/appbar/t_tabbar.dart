import 'package:shop_smart/utils/contants/exports.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Material(
        child: TabBar(
      tabs: tabs,
      isScrollable: true,
      indicatorColor: basicPprimaryColor,
      labelColor: darkMode ? white : basicPprimaryColor,
      unselectedLabelColor: darkGrey,
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
