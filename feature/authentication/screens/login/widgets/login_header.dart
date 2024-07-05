import 'package:shop_smart/utils/contants/exports.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
          height: 150,
          image:
              AssetImage(darkMode ? TImages.redAppLogo : TImages.darkAppLogo)),
      Text(TTextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: TSizes.sm),
      Text(TTextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium)
    ]);
  }
}
