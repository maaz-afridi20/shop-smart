import 'package:flutter/cupertino.dart';
import 'package:shop_smart/utils/contants/exports.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        IconButton(
            onPressed: () =>
                THelperFunctions.navigateOfAll(context, const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //
              // image
              Image(
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBwSections),
              //
              // title and subtitle
              Text(TTextStrings.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),
              Text("noob@gmail.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),
              Text(TTextStrings.confirmEmailSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwSections),
              //
              // btns

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: TImages.deliveredEmailIllustration,
                            title: TTextStrings.yourAccountCreateTitle,
                            subtitle: TTextStrings.confirmEmailSubtitle,
                            onPress: () =>
                                THelperFunctions.navigateToOtherScreen(
                                    context, const LoginScreen()),
                          )),
                      child: const Text(TTextStrings.continuue))),
              const SizedBox(height: TSizes.spaceBwSections),

              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(TTextStrings.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
