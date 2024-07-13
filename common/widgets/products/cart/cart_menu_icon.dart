import 'package:shop_smart/utils/contants/exports.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon(
      {super.key, required this.onPress, this.iconColor = white});

  final VoidCallback onPress;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 8),
      child: Badge(
        backgroundColor: darkMode ? white : black,
        alignment: Alignment.topRight,
        label: Text("2",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: darkMode ? black : white)),
        child: IconButton(
            onPressed: onPress,
            icon: Icon(Iconsax.shopping_bag, color: darkMode ? white : black)),
      ),
    );
  }
}
