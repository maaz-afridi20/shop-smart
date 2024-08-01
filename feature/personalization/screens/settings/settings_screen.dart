import 'package:shop_smart/utils/contants/exports.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            //
            //! Header
            TPrimaryHeaderContainer(
                child: Column(children: [
              TAppbar(
                  title: Text("Account",
                      style: Theme.of(context).textTheme.headlineMedium)),
              Gap(TSizes.spaceBwSections.h),

              //
              //! user profile card
              TUserProfileTile(
                  onPress: () => Get.to(() => const ProfileScreen())),
              Gap(TSizes.spaceBwSections.h),
            ])),
            //
            //
            //! body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                      title: "Account Settings", showActionBtn: false),
                  const Gap(TSizes.spaceBwItems),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set Shopping Delivery Address",
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: "My Cart",
                      subTitle: "Add and remove from cart"),
                  const TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: "My Orders",
                      subTitle: "In progress and complete orders"),
                  const TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: "Bank Account",
                      subTitle: "Withdraw balance to register bank account"),
                  const TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: "My Coupons",
                      subTitle: "List of all discount coupons"),
                  const TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: "Notifications",
                      subTitle: "Set any kind of notificaions"),
                  const TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: "Acccount Privacy",
                      subTitle: "Manage data usage and connected accounts"),

                  //
                  // App settings.

                  const Gap(TSizes.spaceBwSections),
                  const TSectionHeading(
                      title: "App Settings", showActionBtn: false),
                  const Gap(TSizes.spaceBwItems),
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: "load Data",
                      subTitle: "Upload data to firestore to save your data"),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "GeoLocation",
                    subTitle: "Set Recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search results in safe mode",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set the image quality to be seen",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
