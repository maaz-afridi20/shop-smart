import 'package:shop_smart/utils/contants/exports.dart';

class TCounterIcon extends StatelessWidget {
  const TCounterIcon(
      {super.key, required this.onPress, required this.iconColor});

  final VoidCallback onPress;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Badge(
        backgroundColor: black,
        alignment: Alignment.topRight,
        label: const Text("2"),
        textStyle: Theme.of(context).textTheme.labelLarge!.apply(color: white),
        child: IconButton(
            onPressed: onPress,
            icon: Icon(Iconsax.shopping_bag, color: iconColor)),
      ),
    );
  }
}
