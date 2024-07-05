import 'package:shop_smart/utils/contants/exports.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      this.onPress});

  final String image, title, subtitle;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              Image(
                  image: AssetImage(image),
                  width: THelperFunctions.screenWidth() * 0.6),

              const SizedBox(height: TSizes.spaceBwSections),
              //
              // title and subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),
              Text(TTextStrings.yourAccountCreatedSubtitle,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),
              Text(subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPress,
                      child: const Text(TTextStrings.continuue))),
              const SizedBox(height: TSizes.spaceBwSections),
            ],
          ),
        ),
      ),
    );
  }
}
