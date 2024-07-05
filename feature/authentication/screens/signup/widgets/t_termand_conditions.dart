import 'package:shop_smart/utils/contants/exports.dart';

class TTermAndConditions extends StatelessWidget {
  const TTermAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Row(children: [
      SizedBox(child: Checkbox(value: true, onChanged: (value) {})),
      Text.rich(TextSpan(children: [
        TextSpan(
            text: "${TTextStrings.iAgreeTo} ",
            style: Theme.of(context).textTheme.bodySmall),
        TextSpan(
            text: "${TTextStrings.privacyPolicy} ",
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: darkMode ? white : basicPprimaryColor,
                decoration: TextDecoration.underline,
                decorationColor: darkMode ? white : basicPprimaryColor)),
        TextSpan(
            text: "${TTextStrings.and} ",
            style: Theme.of(context).textTheme.bodySmall),
        TextSpan(
            text: TTextStrings.termOfUse,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: darkMode ? white : basicPprimaryColor,
                decoration: TextDecoration.underline,
                decorationColor: darkMode ? white : basicPprimaryColor))
      ]))
    ]);
  }
}
