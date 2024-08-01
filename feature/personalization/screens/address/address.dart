import 'package:shop_smart/utils/contants/exports.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(() => const AddNewAddress()),
          backgroundColor: basicPprimaryColor,
          child: const Icon(Iconsax.add, color: white)),
      appBar: TAppbar(
          showBackArrow: true,
          title: Text("Addresses",
              style: Theme.of(context).textTheme.headlineMedium)),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
