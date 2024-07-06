import '../../../../utils/contants/exports.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            // headings
            Text(TTextStrings.forgotPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const Gap(TSizes.spaceBwItems),
            Text(TTextStrings.forgotPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const Gap(TSizes.spaceBwSections * 2),
            //
            // text field
            TextFormField(
                decoration: const InputDecoration(
                    labelText: TTextStrings.email,
                    prefixIcon: Icon(Iconsax.direct_right))),

            //
            // submit button
            const Gap(TSizes.spaceBwSections),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => THelperFunctions.navigateToOtherScreen(
                        context, const ResetPasswordScreen()),
                    child: const Text(TTextStrings.submit)))
          ],
        ),
      ),
    );
  }
}
