import 'package:shop_smart/utils/contants/exports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(title: Text("Profile"), showBackArrow: true),
      // body
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(children: [
                SizedBox(
                    width: double.infinity,
                    child: Column(children: [
                      TCircularImage(
                          image: TImages.userImage, width: 80.w, height: 80.h),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Change Profile Picture"))
                    ])),

                //
                // Details
                const Gap(TSizes.spaceBwItems / 2),
                const Divider(),
                const Gap(TSizes.spaceBwItems),
                const TSectionHeading(
                    title: "Profile Information", showActionBtn: false),
                const Gap(TSizes.spaceBwItems),

                TProfileMenu(
                    title: "Name", value: "Codint With T", onPressed: () {}),
                TProfileMenu(
                    title: "UserName",
                    value: "Codint With T",
                    onPressed: () {}),
                const Gap(TSizes.spaceBwItems),
                const Divider(),
                const Gap(TSizes.spaceBwItems),
                TProfileMenu(
                    title: "User ID",
                    value: "692hjm79931",
                    onPressed: () {},
                    icon: Iconsax.copy),
                TProfileMenu(
                    title: "E-mail", value: "abc@gmail.com", onPressed: () {}),
                TProfileMenu(
                    title: "Phone Number",
                    value: "788992388834",
                    onPressed: () {}),
                TProfileMenu(title: "Gender", value: "Male", onPressed: () {}),
                TProfileMenu(
                    title: "DOB", value: "19 June 1990", onPressed: () {}),

                const Gap(TSizes.spaceBwItems),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Close Account",
                          style: TextStyle(color: Colors.red))),
                )
              ]))),
    );
  }
}
