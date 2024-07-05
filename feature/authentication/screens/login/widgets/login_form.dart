import 'package:shop_smart/feature/authentication/screens/signup/signup_screen.dart';
import 'package:shop_smart/utils/contants/exports.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: TSizes.spaceBwSections),
            child: Column(children: <Widget>[
              //
              //email
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TTextStrings.email)),
              const SizedBox(height: TSizes.spaceBwInputFields),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TTextStrings.password,
                      suffixIcon: Icon(Iconsax.eye_slash))),
              const SizedBox(height: TSizes.spaceBwInputFields / 2),
              //
              // remember me and forget password
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                // remember me
                Row(children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTextStrings.rememberMe)
                ]),

                //
                // forget password.
                TextButton(
                    onPressed: () {},
                    child: const Text(TTextStrings.forgotPassword))
              ]),
              const SizedBox(height: TSizes.spaceBwSections),

              //
              // sign in btn
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(TTextStrings.signIn))),
              const SizedBox(height: TSizes.spaceBwItems),
              //
              // create account btn
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => THelperFunctions.navigateToOtherScreen(
                          context, const SignUpScreen()),
                      child: const Text(TTextStrings.createAccount))),
            ])));
  }
}
