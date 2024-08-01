import 'package:shop_smart/utils/contants/exports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
          showBackArrow: true,
          title:
              Text("Cart", style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) => const Column(
                      children: [
                        //
                        // Cart items
                        TCartItems(),
                        Gap(TSizes.spaceBwItems),
                        //
                        // add remove btn with total price.
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              //
                              // Extra spacing
                              Gap(70),

                              //
                              // add remove btns
                            ]),
                            //
                            // prouct total price
                          ],
                        )
                      ],
                    ),
                separatorBuilder: (_, __) =>
                    const SizedBox(height: TSizes.spaceBwSections),
                itemCount: 10)),
      ),

      //
      // checkout btn
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () {}, child: const Text("Checkout \$442"))),
    );
  }
}
