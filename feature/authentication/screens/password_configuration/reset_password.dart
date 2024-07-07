import 'package:flutter/cupertino.dart';

import '../../../../utils/contants/exports.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false, actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ]),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: <Widget>[
                    //
                    //image
                    Image(
                        image: const AssetImage(
                            TImages.deliveredEmailIllustration),
                        width: THelperFunctions.screenWidth() * 0.6),

                    const SizedBox(height: TSizes.spaceBwSections),
                    //
                    // title and sub title
                    Text(TTextStrings.changeYoutPasswordTitle,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBwItems),
                    Text(TTextStrings.changeYoutPasswordSubtitle,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBwSections),
                    //
                    // buttons
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(TTextStrings.done))),
                    const Gap(TSizes.spaceBwItems),
                    SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(TTextStrings.resendEmail))),
                  ],
                ))));
  }
}
