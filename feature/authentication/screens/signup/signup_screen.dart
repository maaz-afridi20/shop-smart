import 'package:shop_smart/utils/contants/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTextStrings.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBwSections),
              //
              // form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBwSections),
              //
              //Dividers...
              TFormDivider(dividerText: TTextStrings.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBwSections),
              //
              // social btns
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
