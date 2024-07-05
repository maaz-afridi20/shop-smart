import 'package:shop_smart/utils/contants/exports.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
          child: Divider(
              color: darkMode ? darkGrey : grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5)),
      Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
      Flexible(
          child: Divider(
              color: darkMode ? darkGrey : grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60))
    ]);
  }
}
