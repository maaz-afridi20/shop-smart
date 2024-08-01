import 'package:shop_smart/utils/contants/exports.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const TAppbar(showBackArrow: true, title: Text("Add New Address")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user), labelText: "Name")),
                Gap(TSizes.spaceBwInputFields.h),
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.mobile),
                        labelText: "Phone Number")),
                Gap(TSizes.spaceBwInputFields.h),
                Row(children: [
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.building_31),
                              labelText: "Street"))),
                  Gap(TSizes.spaceBwInputFields.w),
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.code),
                              labelText: "Postal Code"))),
                ]),
                Gap(TSizes.spaceBwInputFields.h),
                Row(children: [
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.building),
                              labelText: "City"))),
                  Gap(TSizes.spaceBwInputFields.w),
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.activity),
                              labelText: "State"))),
                ]),
                Gap(TSizes.spaceBwInputFields.h),
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.global),
                        labelText: "Country")),
                Gap(TSizes.defaultSpace.h),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Save")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
