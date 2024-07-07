import 'package:shop_smart/utils/contants/exports.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      Row(children: [
        Expanded(
            child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user)))),
        const SizedBox(width: TSizes.spaceBwInputFields),
        Expanded(
            child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user))))
      ]),
      const SizedBox(height: TSizes.spaceBwInputFields),
      //
      // username
      TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTextStrings.username,
              prefixIcon: Icon(Iconsax.user_edit))),
      const SizedBox(height: TSizes.spaceBwInputFields),
      //
      // email
      TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTextStrings.email, prefixIcon: Icon(Iconsax.direct))),
      const SizedBox(height: TSizes.spaceBwInputFields),
      //
      // phone number
      TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTextStrings.phoneNo, prefixIcon: Icon(Iconsax.call))),
      const SizedBox(height: TSizes.spaceBwInputFields),
      //
      // password
      TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash))),

      //
      // Term and conditions checkbox

      const TTermAndConditions(),

      //
      // sign up btn
      const SizedBox(height: TSizes.spaceBwSections),
      SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TTextStrings.createAccount)))
    ]));
  }
}
