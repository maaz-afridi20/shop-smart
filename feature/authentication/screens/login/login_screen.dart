import 'package:shop_smart/utils/contants/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: TSpacingStyle.paddingWithAppbarHeight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      // logo title and subtitle
                      const TLoginHeader(),

                      //
                      // form
                      const TLoginForm(),

                      //
                      // divider..

                      TFormDivider(
                          dividerText: TTextStrings.orSignInWith.capitalize!),
                      //
                      // footer
                      const SizedBox(height: TSizes.spaceBwSections),
                      const TSocialButtons()
                    ]))));
  }
}
